#Javascript

> Parts of this chapter is based on tutorials by [Django Girls](https://tutorial.djangogirls.org/), 
[JavaScript: The Right Way](http://jstherightway.org/) and [Node School's Javascripting](https://github.com/workshopper/javascripting)

## Introduction

### About Javascript

> JavaScript® (often shortened to JS) is a lightweight, interpreted, object-oriented language with first-class functions, 
and is best known as the scripting language for Web pages, but it's used in many non-browser environments as well. - 


### Node.js Prompt

To start playing with Javascript, 
we need to open up a command line on your computer. 
You should already know how to do that – you learned it in the [Intro to Command Line chapter](http://test.com).

Once you're ready, follow the instructions below.

We want to open up a Node.js REPL, so type in `node` hit enter.
```
$ node
>
```

After running the `node` command, the prompt changed to `>`. For us this means that for now we may only use commands in the Javascript language. 
You don't have to type in `>` – Node will do that for you.

If you want to exit the Node REPL at any point, just type `.exit` or use the shortcut `Ctrl + C` twice. Then you won't see `>` any longer.

## Variables

A variable is a name that can reference a specific value. Variables are  
declared using `var` followed by the variable's name.  
   
Here's an example:  
  
     > var example;  
        
The above variable is declared, but it isn't defined (it does not yet  
reference a specific value).  

Here's an example of defining a variable, making it reference a specific  
value:  

    > var example = 'some text'; 

A variable is declared using var and uses the equals sign to define the  
value that it references. This is colloquially known as "Making a variable  
equal a value".

We can see this value in the console with
    
    > console.log(example);
    some string
    
    
## Strings

In the last example we created a variable with the value of `some text`. The ***type*** of this variable is a **String**.

A string is a sequence of characters. A character is, roughly speaking, a  
written symbol. Examples of characters are letters, numbers, punctuation  
marks, and spaces.  

String values are surrounded by either single or double quotation marks.  
    
     'this is a string'  
       
     "this is also a string"

Strings can be strung together. Try this in your node console:

    > 'Hi There' + ' User'

You should get back:
    
    'Hi There User'

You can also multiply strings with a number:

    > 'Hello' * 3
    'HelloHelloHello

Strings have various **properties** and **methods** on them. To see some of them let's create a string variable:

    > var name = 'my name';

To see your name in uppercase letters, simply type:
    
    > name.toUpperCase();
    'MY NAME'
    
You just used the `toUpperCase` **method** on your string! 
A method (like `toUpperCase()`) is a sequence of instructions that Javascript has to perform on a given **object** 
("user") once you call it.

If you want to know the number of letters contained in your name, there is a function for that too!

    > name.length
    7

The above code will return a number for the total number of characters in the string variable.  
   

    

## Numbers

## Operators

## Arrays

## Objects

## Functions

## Control Structures

### Conditional (`if-else`)

### Loop Structures (`while`, `do-while`, `for`, `forEach`)