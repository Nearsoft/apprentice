# The amazing world of the Terminal

The terminal is a command-line interface app to control the operating system with text based commands

*FOTO DE UNA TERMINAL (APP)

To understand what the terminal is we need to ask ourselves, if the user interface in the computer would not exist how we would be able to operate it normally as we do? move across the directories and seeing the files? 

The terminal emulator also known as just 'Terminal' is a programs created to display the computer's data, the term comes from when users used to connect through a hardware called terminals that were only a display and a keyboard connected to a main computer called mainframe with a specific user who had specific permissions

*FOTO DE UNA TERMINAL (HARDWARE)

You may be wondering 'Why would I want to learn how to use the terminal if I already know how to create use the graphical user interface (GUI)?' people use the terminal for various reasons but mostly because:
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
That is like called the *shell prompt* and is ready to accept commands. Let's type whatever we want just to see what happen, let's experiment:
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


there are two types of path, absolute path and relative path
Basic commands
Files system
Scripts
Aliases
Create commands
Softlinks
Processes

