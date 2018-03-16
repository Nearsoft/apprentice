# The amazing world of the Terminal

The terminal is a command-line interface app to control the operating system with text based commands

To understand what the terminal is we need to ask ourselves, if the user interface in the computer would not exist how would we be able to operate it normally as we do? How we would move across the directories and editing files?

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

First let's open a terminal if we haven't done already:
```
Daniels-MacBook-Air:apprentice danielvilla$
```
That is like called the **shell prompt**

Let's dissect the parts of the prompt:

`Daniels-MacBook-Air` is the hostname

`apprentice` is the current directory

`danielvilla` is the name of the user

`$` means you are a normal user

The prompt is highly customizable if we change the env variable **$PS1** but for now let's keep it the way it is.

Let's type whatever we want just to see what happens, let's experiment:
```
Daniels-MacBook-Air:apprentice danielvilla$ hey
-bash: hey: command not found
```
As you can see the CLI *(command line interface)* is trying to resolve that name, it thinks it is a command, and since it wasn't found it returns `command not found`, that tells you how to use it, and what it is expecting.

Now let's input a real command.

Type `ls` to list all the files on the current directory:

```
Daniels-MacBook-Air:apprentice danielvilla$ ls
LICENSE   README.md
```

but wait how do we know in what directory we are? we use the command `pwd` that means *path of working directory*:
```
Daniels-MacBook-Air:apprentice danielvilla$ pwd
/Users/danielvilla/apprentice
```
There are two types of path, `absolute path` and `relative path` **pwd** returns the absolute path because it is NOT relative to the current directory we are on and it starts with **/**

#### Navigation

Now that we learned how to display the files on a directory (ls) let's learn how to move to another directory:

```
danielvilla@Daniels-MacBook-Air:~$ cd docker
danielvilla@Daniels-MacBook-Air:~/docker$
```

By the way, the **~** before the **$** sign indicates the home directory, all users have their own home directory, and it is VERY IMPORTANT that you know that **/** indicates the root directory, off all the filesystem

but now that we are in the docker directory how do we move back to the home directory, there are two ways:

`danielvilla@Daniels-MacBook-Air:~/docker$ cd ..`

and

`danielvilla@Daniels-MacBook-Air:~/docker$ cd`

**cd** without any arguments changes to your home directory no matter where you are

You can also take advantage of the **~** symbol and use it to change to a directory inside your home:

```
danielvilla@Daniels-MacBook-Air:~/projects/selenium-projects/likeNeitor$ cd ~/docker
danielvilla@Daniels-MacBook-Air:~/docker$
```
or use the absoluth path (in case the directory is not in your home):

```
danielvilla@Daniels-MacBook-Air:~$ cd /var/log/ppp/
danielvilla@Daniels-MacBook-Air:/var/log/ppp$
```

But now let's say we are working on two very far directories
`~/projects/react_app/config/` and `/etc/ssh/`

#### More on ls command

We already learned about **ls** but as we saw **ls** only showed us the list of files with no metadata:

```
danielvilla@Daniels-MacBook-Air:~/docker/linux_tweet_app$ ls
Dockerfile          README.md           index-new.html      index-original.html index.html          linux.png
```

but as a curious user that I am, I want to know the date the file was created, the size and the owner. To display it lets use the **-l** flag. Yes, we can use flags on commands to make them do more:

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
Awesome, but that's kinda confusing, what are those numbers next to the staff word? Most commands that deal with storage properties share a commond flag **-h** that means "human readable":

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

Now you might be thinking, where does this all come from? Where are we? What's the space the terminal is printing in? Where does the prompt come from?

Well first let's learn about the **printenv** and **set** commands. Like any other program the terminal has it's own defined variables in it's *environment*

printenv and set (without any arguments) print the defined variables in the session:

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

But how do we see what the PS1 variable contains? The command we are looking for to print strings and variables is **echo**, let's try it with always classy hello world:

```
danielvilla@Daniels-MacBook-Air:~$ echo "Hello world"
Hello world
```
now lets see what the PS1 variable has:
```
vagrant@vagrant-ubuntu-trusty-64:~$ echo $PS1
\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\u@\h:\w\$
```
Notice that we had to use **$** sign before the PS1 variable name, it's not used when we inizialiate it, but it is when call it.

Now, yeah, that variable is printed every time you hit enter, that's how we see the prompt, so if we change the value of the $PS1 variable we will see another prompt:

```
export PS1="new prompt"
```
Yup, that's your new prompt, to go back just add again the previous value



#### Other casual commands

These are another handful of useful commands, that give you more vision of your environment while using the terminal, when everything seems dark.

To know what's the user you are currently using:
```
danielvilla@Daniels-MacBook-Air:~/apprentice$ whoami
danielvilla
```
To know the name of the machine you are currently on:
```
danielvilla@Daniels-MacBook-Air:~/apprentice$ hostname
Daniels-MacBook-Air.local

```
To display a beautiful calendar:
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
To know exactly what day is today with the current time:
```
danielvilla@Daniels-MacBook-Air:~/apprentice$ date
Fri Mar  2 02:04:44 MST 2018
```
To know the description of a file:
```
danielvilla@Daniels-MacBook-Air:~/apprentice$ file README.md
README.md: UTF-8 Unicode text
```
To display a cow:
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

It's very common to feel lost and don't know how to use a command properly, or as a start, what a command does, but don't worry, there are some pretty neat commands that help you out you your troubles

First we have **man** command from the word manual, let's use it on ls:

```
danielvilla@Daniels-MacBook-Air:~$ man ls
```
outputs:
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

But now what if only want a small description? Well we are all always in a hurry so let's be more pragmatic and use the **whatis** command:

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

We have been exploring how to move across directories, list files and see the metadata of those, but now, let's go one step ahead and create a directory with the **mkdir** command:

```
danielvilla@Daniels-MacBook-Air:~$ mkdir mydirectory
danielvilla@Daniels-MacBook-Air:~$
```
Normally when a command is successful it won't print anything, if we look now the mydirectory directory is created and ready to have files

It's very common that we want to create directories contained inside directories (that's how everything works) but mkdir alone won't let us do that:

```
danielvilla@Daniels-MacBook-Air:~$ mkdir great_ideas/best_ideas/dontlookhere
mkdir: great_ideas/best_deas: No such file or directory
```
We need to add the **p** flag to correct that:

```
danielvilla@Daniels-MacBook-Air:~$ mkdir -p great_ideas/best_ideas/dontlookhere
danielvilla@Daniels-MacBook-Air:~$
```
That will save us a lot of time of doing `mkdir great_ideas` then `cd great_ideas` then `mkdir best_ideas`... well you get the point

NOW! We have our directory ready to have files and great ideas, but how do we create a simple file?

There are plenty of ways to create files in unix system but the common ones are:

```
danielvilla@Daniels-MacBook-Air:~$ touch idea1.txt
```
**touch** is an awesome command, you don't have to worry if the file exists and if it is going to get overwritten, if there's a idea1.txt file only the created date wil be affected to the current date, the data will stay intact


**vim** is a text editor that will let you create files, the comprehension and usage of vim is WAY beyond this course, but I want to let you know that people who know how to use vim are VERY efficient in matters of text insertion and deletion, vim allows you to do very delicate and elegant modifications to a file. For now lets just create a file:

```
danielvilla@Daniels-MacBook-Air:~$ vim idea2.txt
```
vim will create idea2.txt, to enter in insert mode text press **i**

To exit press **esc** then **:** and then **q** follow by **enter** key:

```
danielvilla@Daniels-MacBook-Air:~$ > idea3.txt
```
redirecting the output of nothing, it will create an empty text file

To add text to a file you can simple vim into it and add the text in insert mode, or you can append text, echoing the text and adding it to the file:

```
danielvilla@Daniels-MacBook-Air:~$ echo "create a script to automate installations" >> idea1.txt
```
to display what a file has let's use the cat command:
```
danielvilla@Daniels-MacBook-Air:~$ cat idea1.txt
create a script to automate installations
```
we can also use the **less** and **more** commands, try it!

#### Removing files and directories

Now that we have created a file and a directory let's learn how to remove it (we will be doing that a lot):
```
danielvilla@Daniels-MacBook-Air:~$ rm bad_dea.txt
```
as simple as that, but BE AWARE, there's NO trash can in the terminal, **removing something IS FOREVER**

rm by itself won't allow us to remove a directory, a directory is a special kind of file that associates file names with it's metadata, we need to use two flags for it:

```
danielvilla@Daniels-MacBook-Air:~$ rm -rf ideas
```
now if we want to be careful when deleting a delicate directory let's use the interactive mode:
```
danielvilla@Daniels-MacBook-Air:~$ rm -rfi ideas/
examine files in directory ideas/? yes
remove ideas/? yes
```
if the directory is empty we can remove it with **rmdir** without using any flag:
```
danielvilla@Daniels-MacBook-Air:~$ rmdir ideas
```


#### Other useful commands
To find a file on your filesystem use the command find:
```
vagrant@vagrant-ubuntu-trusty-64:~/apprentice$ find . -name README.md
./react-app/README.md
./README.md
./rails-api/README.md
```
where **.** indicates we do the search from the current directory, **-name** that we do it by the filename and README.md is the name of the file we are looking for

To search for a specific text contained on a file lets use grep in recursive mode
grep:
```
vagrant@vagrant-ubuntu-trusty-64:~/apprentice$ grep -R database
rails-api/bin/setup:  # unless File.exist?('config/database.yml')
rails-api/bin/setup:  #   cp 'config/database.yml.sample', 'config/database.yml'
```
notice the **-R** flag and how the it searched for the text database on the current directory

Finaly to see all the commands that we have been typing let's use the **history** command:

```
.
.
110  find . -name README.md
111  ls
112  grep -R database
113  grep -R database.yml
114  history
vagrant@vagrant-ubuntu-trusty-64:~/apprentice$
```


#### Excercises
1. Create a file containing your username and hostname
2. Create a tree directory ~/movies/goodmovies/top5movies
3. Create a file in top5movies and add your 5 favorite movies
4. Create a directory ~/to_delete add 3 files and remove it interactively
5. Search for the file *term.log* and display it's absolute path
6. Search for all the files on your home directory that contain the word password
