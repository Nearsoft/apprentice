
## What is Vagrant?
Vagrant is a tool for building and managing virtual machine environments in a single workflow.It will install you everything you need for starting developing right away without needing to manually install all the dev dependencies one by one. For the Apprentice app we bundled for you ruby, rails, node, postgresql & several other dependencies that the project requires to run.

Vagrant lowers development environment setup time, increases production parity, and makes the "works on my machine" excuse a relic of the past.

## Installation

1. Download and install Install VirtualBox 5.1.X (https://www.virtualbox.org/wiki/Downloads)

2. Download and install Vagrant 1.9.X (http://www.vagrantup.com/downloads.html)

3. Go to your terminal and `cd` into apprentice project directory:

  ```
  $ cd Project
  ```

4. Create shared folder between your local machine and vagrant:

  ```
  $ mkdir share
  ```

5. In your terminal execute `vagrant up`. This is the single most important command in Vagrant, since it is how any Vagrant machine is created. Anyone using Vagrant must use this command on a day-to-day basis. Execute:

 ```
 $ vagrant up
 ```

6. Now grab a cofee and let that sink for a couple of minutes 🕐.

7. Once you see apprentice's logo on your console `ssh` into your newly created machine, to do that run:

  ```
   $ vagrant ssh
  ```

**Tip 💡**: Instead of running `vagrant up` and then `vagrant ssh` you can do both commands in one line: `vagrant up && vagrant ssh`

**Note ⚠️**: To exit vagrant in your terminal type: `exit`


### Useful aliases

To save some time you can use the following command aliases

Command | Action
------------ | -------------
root | `cd`s into `/apprentice` path
app | `cd`s into the rails app
api | `cd`s into react app
rs | bring up the `rails server`
