#!/bin/sh

RUBY_VERSION=2.3.5
NODE_VERSION=9

# Set UTF-8
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Set encoding to UTF-8
sudo update-locale LANG=en_US.UTF-8

# Update apt-get for postgres 9.6 on Ubuntu 14.04
add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main"
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

sudo apt-get -y update

# Install Postgres-9.6 and extensions for trgm_gin indexes and libaio-dev
sudo apt-get -y install postgresql-9.6 postgresql-contrib libaio-dev

# From setup guide pre-requisites for Ruby-2.x
sudo apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev libffi-dev libpq-dev libqt4-dev

# For node instead of the therubyracer, unzip, and pdf email
sudo apt-get -y install nodejs unzip wkhtmltopdf

# Install RUBY_VERSION
cd /tmp
wget --quiet http://cache.ruby-lang.org/pub/ruby/2.3/ruby-${RUBY_VERSION}.tar.gz
tar -xzf ruby-${RUBY_VERSION}.tar.gz
cd ruby-${RUBY_VERSION}/
sudo ./configure --prefix=/usr/local  --disable-install-rdoc
sudo make install

#Install NODE_VERSION
curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | sudo -E bash -
sudo apt-get install -y nodejs

# Disable rdoc
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
sudo gem install bundler

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Clean up anything
sudo apt-get -y autoremove

# Set up the DB
sudo -u postgres createuser apprentice
sudo -u postgres createuser readonly
echo "ALTER USER apprentice WITH PASSWORD 'apprentice';" | sudo -u postgres psql
echo "ALTER USER apprentice WITH SUPERUSER;" | sudo -u postgres psql

echo "update pg_database set datallowconn = TRUE where datname = 'template0';"| sudo -u postgres psql
echo "update pg_database set datistemplate = FALSE where datname = 'template1'; drop database template1;" | sudo -u postgres psql template0
echo "create database template1 with ENCODING = 'UTF-8' LC_CTYPE = 'en_US.utf8' LC_COLLATE = 'en_US.utf8' template = template0;" | sudo -u postgres psql template0
echo "update pg_database set datistemplate = TRUE where datname = 'template1';" | sudo -u postgres psql template0
echo "update pg_database set datallowconn = FALSE where datname = 'template0';" | sudo -u postgres psql template1

# Run bundle install
cd /apprentice/rails-api
bundle install

# Add shortcuts to .bashrc
cat /apprentice/script/bashrc | sudo tee -a /home/vagrant/.bashrc

# Setting xvfb start up
cat <<EOT > /etc/init.d/xvfb
  XVFB=/usr/bin/Xvfb
  XVFBARGS=":10 -fbdir /var/run"
  PIDFILE=/var/run/xvfb.pid
  case "\$1" in
    start)
      echo -n "Starting virtual X frame buffer: Xvfb"
      start-stop-daemon --start --quiet --pidfile \$PIDFILE --make-pidfile --background --exec \$XVFB -- \$XVFBARGS
      echo "."
      ;;
    stop)
      echo -n "Stopping virtual X frame buffer: Xvfb"
      start-stop-daemon --stop --quiet --pidfile \$PIDFILE
      echo "."
      ;;
    restart)
      \$0 stop
      \$0 start
      ;;
    *)
    echo "Usage: /etc/init.d/xvfb {start|stop|restart}"
    exit 1
  esac
  exit 0
EOT

sudo chmod +x /etc/init.d/xvfb
sudo /etc/init.d/xvfb start

sed -ie '$d' /etc/rc.local #Removes a default 'exit 0' at the end of the file
cat <<EOT >> /etc/rc.local
  sudo /etc/init.d/xvfb start
EOT
