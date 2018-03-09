# Git
## About Version Control

What is _version control_?

To understand git, first we need to understand the concept of version control.

Version control is a system that records changes to a file or set of files over time so that you can recall specific versions later. A Version Control System (VCS) allows you to revert selected files back to a previous state, revert the entire project back to a previous state, compare changes over time, see who last modified something that might be causing a problem, who introduced an issue and when, and more. Using a VCS also generally means that if you screw things up or lose files, you can easily recover.

Kinda like save states.

<p align="center">
<img align="center" src="https://user-images.githubusercontent.com/7427385/37220048-9be6a35e-2382-11e8-9011-8111be2843f4.png">
</p>

## A little history of VCS.

### Local Version Control Systems

A very common and simple version control system is to copy files into another directory in order to save another version of our work (v1.0, v2.0…). This is approach, however, is incredibly error prone. Not only takes a lot of space, but it’s easy to accidentally delete files you didn’t mean to, or write into wrong directories, messing up all your work, adding new bugs and a LOT of overhead while trying to collaborate between your team members.

<p align="center">
<img align="center" src="https://user-images.githubusercontent.com/7427385/37220067-ad13fb36-2382-11e8-96e5-b12e5beb023c.png">
</p>

To avoid this kind of errors, VCS tools were developed. The first kind of VCS tools that were developed were local VCS.

<p align="center">
<img align="center" src="https://user-images.githubusercontent.com/7427385/37220084-bee57038-2382-11e8-8f24-6bc806cd9d23.png">
</p>

With this tools, versions were now saved on a database in a special format rather than the local file system and files could be returned to previous versions in a more elegant way.
However there were still many issues with this system. Among other things, team collaboration was not possible using local VCS.
Here's were Centralized Version Control Systems came into play.

### Centralized Version Control Systems

With this VCS (Also called CVCS), developers were now able to collaborate with others. Basically, a central code repository stores all versions of a project. Developers can copy different versions of the codebase into their own environments and save their changes in the central repository.

<p align="center">
<img align="center" src="https://user-images.githubusercontent.com/7427385/37220103-cdb709e6-2382-11e8-96fa-9468b67a6265.png">
</p>

This system had many advantages compared to local VCS. Developers can see what other team members are doing and maintenance work became so much easier, since there’s only one centralized code repository, instead of many local repositories.

However, this system had many issues as well. For example, if the server goes down for an hour, no one will be able to change versions or files, add new files. Basically you’re stuck with the version of a file you were working on.

### Distributed Version Control Systems

Our main topic today and the most popular VCS used nowadays are Distributed Version Control Systems or DVCS for short.

With this system, developers not only copy the latest version of a file or a version of it, they copy the whole repository. Every clone is a full backup of data. So, if the server dies, we’re still able to restore it through a local version of the repository. If the server goes down, we’re still able to change between versions and add new code.


<p align="center">
<img align="center" src="https://user-images.githubusercontent.com/7427385/37220127-dd20dad8-2382-11e8-873e-b7aa5a0d8092.png">
</p>


### So, What’s Git?

Git is a DVCS. With it, we can effectively store different versions of our project and collaborate between team members.

### Name origin
“Git is not an acronym. 'git' is British slang for a dumb, annoying, or generally unpleasant person. The joke is that Linus Torvalds (Linux creator) names his projects after himself, so he chose 'git' as the name of the VCS he made."

## Getting started
In order to start working with git we need to perform a little setup first.
First of all (obviously) we need git installed on our machine.

> If you already have the Apprentice Vagrant project running on your computer, then you already have git installed.
> If not, follow this URL to install it depending on your OS:
> https://git-scm.com/book/en/v2/Getting-Started-Installing-Git


After installing, you need to tell git who you are. We do so using git config.

```
git config --global user.email "you@example.com"
git config --global user.name "Your Name”
```
> global: write to global ~/.gitconfig file rather than the repository .git/config

**Note: If you’re planning on using GitHub use the same email/username you used to create your account.**

Easy as that, now we’re ready to start configuring our repository. Let’s start with the basics:
There are two possibilities. Either you’re starting with a new project or starting to collaborate in a project. We’ll cover both.

### Starting a new git repository.

Follow this steps to start using git in your own project.

Create a new directory to contain your project.

```
cd share
mkdir workspace
cd workspace
mkdir myproject
```

Create a test file
```
echo "# test" >> test.txt
```

Go into your directory and run 	git init

```
cd myproject
git init
```

This command creates an empty Git repository, right now it’s only in your local environment.
In order to start collaborating with your teammates, you’ll need it to be centralized on a remote code repository. We’ll use GitHub for it.

Follow this steps to create a new remote repository.

```
Go to github.
Log in to your account.
Click the new repository button in the top-right.
Click the “Create repository” button.
```

Now, follow the second set of instructions, “Push an existing repository…”

Go into your project directory and run:

```
git remote add origin https://github.com/<your_username>/<your_repo_name>
<your_username>: Your GitHub username
<your_repo_name>: You guessed it! Your repository name.
```

Before going further, we need to understand the three main states of git:

The basic Git workflow goes something like this:

1. You modify files in your working tree (A Working tree consists of files that you’re currently working on).

2. You selectively stage just those changes you want to be part of your next commit, which adds only those changes to the staging area.

3. You do a commit, which takes the files as they are in the staging area and stores that snapshot permanently to your Git directory.

<p align="center">
<img align="center" src="https://user-images.githubusercontent.com/7427385/37220223-2d8afa1c-2383-11e8-95c2-45ea4a63b1c7.png">
</p>

First, we want to see which files are present in our working tree and decide to put them (or not) in our staging area
We can check this files using the command
```
git status
```

We’ll see something like this

```
On branch master
Your branch is up-to-date with 'origin/master'.
Untracked files:
  (use "git add <file>..." to include in what will be committed)

	test.txt
nothing added to commit but untracked files present (use "git add" to track)
```

This indicates we are on the main branch, it is up to date with our remote repository, and we have some files on our working directory ready to be put in our staging area.

To do so we use the command
```
git add test.txt
```

This will let git know that the file is ready to be on staging area. Once we have all the files we want to include in our next commit we use command:
```
git commit -m “<your_commit_message>”
```
> <your_commit_message>: This could be a short description of what changes does the commit makes.

Now we have our files in our git directory, ready to be sent to our remote repository so everyone can see them.
```
git push -u origin master
```
> origin is an alias for our remote repository. If you run
```
git remote -v
```

You’ll be able to see what URL belongs to each remote.

_**Note: After you execute this command, you’ll need to authenticate yourself with your email and GitHub password. This is done as a security measure. If you don’t want to type your password every time, you can clone the repository using SSH, however, some further steps are needed, if you want to try, just follow this instructions: http://kbroman.org/github_tutorial/pages/first_time.html**_

Now go to https://github.com/username/new_repo. You’ll see that your files are updated there as well.

Now you’re all set to start using GitHub like a pro.

### Existing git repository.

This is even easier. In this case, you just have to clone the remote repository and you can start working on it.

```
git clone https://github.com/username/new_repo
```

However, you’ll not be able to push code out of the box. We don’t want strangers messing with our codebase. In order to be able to push, you need to be listed as a collaborator of the repository.

```
Exercise:
Add a new collaborator in your repository and ask him to add a new file with his own “Hello World” implementation. This can be in any language you like and in the main directory.
Remember, the commit message is a little description about your changes.
```

After finishing the exercise, you'll have changes on your remote repository that are not present in your local repository. In order to incorporate them to your own repository, you can use the command.

```
git pull
```

This will check for new changes on your repository and incorporate them to your current branch.

If you want a list of the commits present on branch master you can use:

```
git log
```

Then, using the commit hash, you can see more information using

```
git show <hash>
```

This will show information like new files, deleted files, new added code, removed code that were modified with that commit.

## Branches

When working on a project, there are going to be many different features to add, bugs to fix, or even new ideas to try. Changes that could potentially break other functionality. We use branching to help us with this issues.
When creating a branch, we’re basically copying our own version of the project, creating an environment to test out new ideas and make changes that don’t affect the master branch.

To create a branch, simply run this command on your terminal

```
git branch <branch_name>
```
_***<branch_name>: A significant name about what you’re working on. Example: story-123-fixing-payment-issues***_

After you create it, you must move to the that branch before starting to work on it. You do so by using command

```
git checkout <branch_name>
```

_***If you want to create a branch and check out at the same time you can use `git checkout -b <branch_name>`***_

Now we're ready to start working on our new feature

```
Exercise:
Change your teammate "Hello, World" implementation to any other phrase you want and then commit and push your changes.
```

If you checkout to branch `master` and then `git log`, You'll notice that your commit is not present there, that's because you committed to another branch.

After you finish working on your feature, it's now ready to be added to the master branch. In order to do so, you need to `merge` your branch to master.

Make sure both of your branches are up to date using `git pull` and then run

```
git checkout <branch_name>
git pull
git checkout master
git merge <branch_name>
git push -u origin master
```
Now, if you run `git log`, You'll notice that your new commit is there on the `master` branch.

<p align="center">
<img align="center" src="https://user-images.githubusercontent.com/7427385/37220229-32b2ca1a-2383-11e8-8519-e481dce6de06.png">
</p>

## Pull requests
Pull requests are a way to propose new changes on your project.

Instead of merging directly to your master branch. You open a pull requests to let other review and approve your changes before merging to the master branch. 

## Forks
A fork is a copy of a repository, you can fork any public repository and propose new changes or solve issues.

When you fork a repository on GitHub, you'll make your own copy under your username.

```
Fork the Apprentice repository and checkout to `git-exercise` branch.
Create a new file under the _Exercise_ directory with a program that prints your full name.
The file structure should be: <first letter of your name><your last name>_<date with DDMMYY format>.<program extension>
Example: esanchez_090318.java
In the commit message add a little description of your change along with an identifier
Example:
esanchez_090318 - Completing PR exercise
```

Once you do, we'll review and approve your changes.
