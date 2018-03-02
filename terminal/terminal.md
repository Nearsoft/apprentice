# The amazing world of the Terminal

The terminal is a command-line interface app to control the operating system with text based commands

To understand what the terminal is we need to ask ourselves, if the user interface in the computer would not exist how we would be able to operate it normally as we do? move across the directories and editing files? 

The terminal emulator also known as just 'Terminal' is a programs created to display the computer's data, the term comes from when users used to connect through a hardware called terminals that were only a display and a keyboard connected to a main computer called mainframe with a specific user who had specific permissions

You may be wondering 'Why would I want to learn how to use the terminal if I already know how to use the graphical user interface (GUI)?' 

People use the terminal for various reasons but mostly because:

- It's faster to operate on the terminal
- Some data is not easily accessible through the GUI
- Repetitive task can be automated through it
- Makes difficult tasks easy

And of course, when programming we will be using the terminal a lot, to install libraries, move across the filesystem, display changes in our files, push code to remote servers, etc.

We are using BASH that is a command language or a command interpreter. BASH is a type of shell, a shell is an interface to the operating system, it passes commands to SO to carry out, there are other types of shells, you'll commonly see this two terms together

## Hands on the terminal

To start liking the terminal we need to know the basic commands, and keep learning accordingly to what we want to accomplish

First let's open a terminal if we haven't done already. 
```
Daniels-MacBook-Air:apprentice danielvilla$ 
```
That is like called the **shell prompt** 

Let's dissect the parts of the prompt:

`Daniels-MacBook-Air` is the hostname

`apprentice` is the current directory

`danielvilla` is the name of the user

`$` means you are a normal user

the prompt is highly customizable changing the env variable **$PS1** but for now let's keep it the way it is

Let's type whatever we want just to see what happen, let's experiment:
```
Daniels-MacBook-Air:apprentice danielvilla$ hey
-bash: hey: command not found
```
As you can see the CLI *(command line interface)* is trying to resolve that name, it thinks it is a command, and as it wasn't found it return `command not found`, that tell you how to use it, and what it is expecting

Now let's input a real command.

Type `ls` to list all the files on the current directory. 

```
Daniels-MacBook-Air:apprentice danielvilla$ ls
LICENSE   README.md
```

but wait how do we know in what directory we are? we use the command `pwd` that means *path of working directory*
```
Daniels-MacBook-Air:apprentice danielvilla$ pwd
/Users/danielvilla/apprentice
```
Thre are two types of path, `absolute path` and `relative path` what pwd returns is the absolute path because it is NOT relative to the current directory we are on and it starts with **/**

#### Navigation

Now that we learned how to display the files on a directory (ls) let's learn how to move to another directory

```
danielvilla@Daniels-MacBook-Air:~$ cd docker
danielvilla@Daniels-MacBook-Air:~/docker$ 
```

By the way, the **~** before the **$** sign indicates the home directory, all users have their own home directory

but now that we are on the docker directory how do we move back to the home directory, there are two ways:

`danielvilla@Daniels-MacBook-Air:~/docker$ cd ..`

and

`danielvilla@Daniels-MacBook-Air:~/docker$ cd`

**cd** without any arguments changes to your home directory no matter where you are

You can also take advantage of the **~** symbol and use it to change to a directory inside your home 

```
danielvilla@Daniels-MacBook-Air:~/projects/selenium-projects/likeNeitor$ cd ~/docker
danielvilla@Daniels-MacBook-Air:~/docker$ 
```
or use the absoluth path (in case the directory is not in your home)

```
danielvilla@Daniels-MacBook-Air:~$ cd /var/log/ppp/
danielvilla@Daniels-MacBook-Air:/var/log/ppp$ 
```

But now let's say we are working on two very far directories
`~/projects/react_app/config/` and `/etc/ssh/`

#### More on ls command

We already learn about **ls** but as we saw **ls** only showed us the list of file with no metadata

```
danielvilla@Daniels-MacBook-Air:~/docker/linux_tweet_app$ ls
Dockerfile          README.md           index-new.html      index-original.html index.html          linux.png
```

but as a curious user that I am, I want to know the date the file was created, the size, the owner. To display it lets use the **-l** flag. Yes, we can use flags on commands to make them do more

```
danielvilla@Daniels-MacBook-Air:~/docker/linux_tweet_app$ ls -l
total 88
-rw-r--r--  1 danielvilla  staff    147 Feb 18 20:48 Dockerfile
-rw-r--r--  1 danielvilla  staff    284 Feb 18 20:48 README.md
-rw-r--r--  1 danielvilla  staff   1673 Feb 18 20:48 index-new.html
-rw-r--r--  1 danielvilla  staff   1540 Feb 18 20:48 index-original.html
-rw-r--r--  1 danielvilla  staff   1595 Feb 18 20:48 index.html
-rw-r--r--  1 danielvilla  staff  22365 Feb 18 20:48 linux.png
```
Awesome, but that's kinda confusing, what are those numbers next to the staff word? Most commands that deal with storage properties share a commond flag **-h** that means "human readable"

```
danielvilla@Daniels-MacBook-Air:~/docker/linux_tweet_app$ ls -lh
total 88
-rw-r--r--  1 danielvilla  staff   147B Feb 18 20:48 Dockerfile
-rw-r--r--  1 danielvilla  staff   284B Feb 18 20:48 README.md
-rw-r--r--  1 danielvilla  staff   1.6K Feb 18 20:48 index-new.html
-rw-r--r--  1 danielvilla  staff   1.5K Feb 18 20:48 index-original.html
-rw-r--r--  1 danielvilla  staff   1.6K Feb 18 20:48 index.html
-rw-r--r--  1 danielvilla  staff    22K Feb 18 20:48 linux.png
```
Now we can see a more understandable output regarding the file size, and as you might guess Feb 18 is the date when the file was created. Don't worry about the other stuff for now

#### Printing and env variables

Now you might be thinking where does this all come from? Where are we? What's the space the terminal is printing in? Where does the prompt come from? 

Well first let's learn about the **printenv** and **set** commands. As every program the terminal has it's own defined variables in it's *environment*

printenv and set (without any arguments) print the defined variables on the session

```
vagrant@vagrant-ubuntu-trusty-64:~$ printenv
XDG_SESSION_ID=4
TERM=xterm-256color
SHELL=/bin/bash
SSH_CLIENT=10.0.2.2 50356 22
SSH_TTY=/dev/pts/0
USER=vagrant
```
and
```
vagrant@vagrant-ubuntu-trusty-64:~$ set
BASH=/bin/bash
BASHOPTS=checkwinsize:cmdhist:complete_fullquote:expand_aliases:extglob:extquote:force_fignore:histappend:interactive_comments:login_shell:progcomp:promptvars:sourcepath
BASH_ALIASES=()
BASH_ARGC=()
BASH_ARGV=()
```
but there's particulary one variable that we want to see and that is **PS1** that controls the look of the shell prompt.

But how do we see what the PS1 variable contains? The command we are looking for to print strings and variables is **echo**, let's try it with always classy hello world

```
danielvilla@Daniels-MacBook-Air:~$ echo "Hello world"
Hello world
```
now lets see what the PS1 variable has
```
vagrant@vagrant-ubuntu-trusty-64:~$ echo $PS1
\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\u@\h:\w\$
```
Notice that we had to use **$** sign before the PS1 variable name, it's not used when we inizialiate it, but it is when call it.

Now, yeah, that variable is printed every time you hit enter, that's how we see the prompt, so if we change the value of the $PS1 variable we will see another prompt

```
export PS1="new prompt"
```
Yup, that's your new prompt, to go back just add again the previous value



#### Other casual commands

These are another handful of useful commands, to give you more vision of your environment while using the terminal, when everything seems dark.

To know what's the user you are currently using
```
danielvilla@Daniels-MacBook-Air:~/apprentice$ whoami
danielvilla
```
To know the name of the machine you are currently on
```
danielvilla@Daniels-MacBook-Air:~/apprentice$ hostname
Daniels-MacBook-Air.local

```
To display a beautiful calendar
```
danielvilla@Daniels-MacBook-Air:~/apprentice$ cal
     March 2018       
Su Mo Tu We Th Fr Sa  
             1  2  3  
 4  5  6  7  8  9 10  
11 12 13 14 15 16 17  
18 19 20 21 22 23 24  
25 26 27 28 29 30 31  
```
To know exactly what day is today with the current time
```
danielvilla@Daniels-MacBook-Air:~/apprentice$ date
Fri Mar  2 02:04:44 MST 2018
```
To know the description of a file
```
danielvilla@Daniels-MacBook-Air:~/apprentice$ file README.md 
README.md: UTF-8 Unicode text
```
To display a cow
```
vagrant@vagrant-ubuntu-trusty-64:~$ apt-get moo
                 (__) 
                 (oo) 
           /------\/ 
          / |    ||   
         *  /\---/\ 
            ~~   ~~   
..."Have you mooed today?"...
```


#### Asking for help (RTFM)

It's very common to feel lost and don't know how to us a command properly, or for a start what a command do, but don't worry there are some pretty neat commands that help you out you your troubles

first we have **man** command from the word manual, let's use it on ls

```
danielvilla@Daniels-MacBook-Air:~$ man ls
```
outputs
```

LS(1)                     BSD General Commands Manual                    LS(1)

NAME
     ls -- list directory contents

SYNOPSIS
     ls [-ABCFGHLOPRSTUW@abcdefghiklmnopqrstuwx1] [file ...]

DESCRIPTION
     For each operand that names a file of a type other than directory, ls displays its name as well as any requested, associated information.  For each operand that names a file of type directory, ls
     displays the names of files contained within that directory, as well as any requested, associated information.

     If no operands are given, the contents of the current directory are displayed.  If more than one operand is given, non-directory operands are displayed first; directory and non-directory operands
     are sorted separately and in lexicographical order.
```
We can scroll down with the key arrows and quit **q**

Whenever you don't know how to use a command use man then the name of the command to read everything about it, it also shows the flags you can use and in some cases some examples.

But now what if only want a small description? Well we are all always in a hurry so let's be more pragmatic and use the **whatis** command

```
vagrant@vagrant-ubuntu-trusty-64:~$ whatis ls
ls (1)               - list directory contents
```
pretty neat

What about the other way? I want a command if there is a command that lists the directory contents... if only...
```
vagrant@vagrant-ubuntu-trusty-64:~$ apropos "list directory contents"
```
```
vagrant@vagrant-ubuntu-trusty-64:~$ apropos "list directory contents"
dir (1)              - list directory contents
ls (1)               - list directory contents
ntfsls (8)           - list directory contents on an NTFS filesystem
vdir (1)             - list directory contents
```
Yes, the command **apropos** searches for a command that fits your description

#### Creating files and directories
mkdir 
mkdir -p
touch
vi
>

#### Removing files and directories 
rm
rm -rf
rm -rfi
rmdir (only if empty)

#### Other useful commands 
ifconfig

#### Excercises


