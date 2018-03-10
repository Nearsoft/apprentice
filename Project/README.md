# Apprentice Project

## What is Vagrant?
Vagrant is a tool for building and managing virtual machine environments in a single workflow. It helps creates a development environment with everything that you need for starting coding right away without needing to manually install all the dependencies one by one. For the Apprentice app we have bundled for you ruby, rails, node, postgresql & several other dependencies that this project requires to run.

Vagrant lowers development environment setup time, increases production parity, and makes the "works on my machine" excuse a relic of the past.

## Installation

1. Download and install Install VirtualBox 5.2.X (https://www.virtualbox.org/wiki/Downloads)

2. Download and install Vagrant 2.0.X (http://www.vagrantup.com/downloads.html)

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
  
 8. If Everything was installed correctly you should see something like this in your screen:

<img width="1097" alt="screen shot 2018-03-01 at 10 03 49 pm" src="https://user-images.githubusercontent.com/7410981/36910845-16cdbe2e-1dff-11e8-8060-35209d32d9f4.png">

9. Once you're done using your *virtual machine* use the following command in your *local machine* to shut it down.

```
$ vagrant halt
```

**Tip 💡**: Instead of running `vagrant up` and then `vagrant ssh` you can do both commands in one line: `vagrant up && vagrant ssh`

**Note ⚠️**: To exit vagrant in your terminal type: `exit`

### Useful aliases

To save some time you can use the following command aliases once you're inside the virtual machine:

Command | Action
------------ | -------------
root | `cd` into `/apprentice` path
app | `cd` into the rails app
api | `cd` into react app
rs | bring up the `rails server`
