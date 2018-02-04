
## What is Vagrant?
Vagrant is a tool for building and managing virtual machine environments in a single workflow. With an easy-to-use workflow and focus on automation, Vagrant lowers development environment setup time, increases production parity, and makes the "works on my machine" excuse a relic of the past.

## Installation

1. Download and install Install VirtualBox 5.1.X (https://www.virtualbox.org/wiki/Downloads)

* Download and install Vagrant 1.9.X (http://www.vagrantup.com/downloads.html)

* In your terminal `cd` into project directory

  ```
  $ cd Project
  ```

* Create shared folder between your local machine and vagrant:

  ```
  $ mkdir share
  ```

* In your terminal run

 ```
 $ vagrant up
 ```

* let that sink for a couple of minutes 🕐.

* Once you see apprentice's logo on your console
 ssh intro your newly created machine, run:

  ```
   vagrant ssh
   ```


** Tip 💡**: Instead of and then ss into it you can do both commands in one line: `vagrant up && vagrant ssh`


### Useful alias:

root
api
app


** Note ⚠️**  to exit vagrant in your terminal type: `exit`
