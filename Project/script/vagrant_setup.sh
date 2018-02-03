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

# Install git
sudo apt-get -y install git

# Install .zsh (for pretty console)
sudo apt-get -y install zsh

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
cd /home/vagrant/apprentice/rails-api
echo Running bundle install
bundle install
echo Creating database
rake db:create

# Install oh-my-zsh
echo Cloning oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh

echo Copying .zshrc file
# copy .zshrc config file
cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc
cp /home/vagrant/apprentice/script/zshrc /home/vagrant/.zshrc

# Change the vagrant user's shell to use zsh
chsh -s /bin/zsh vagrant
