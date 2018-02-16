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

If you want to know the number of letters contained in your name, there is a property for that!

    > name.length
    7

The above code will return a number for the total number of characters in the string variable.  
   
We'll look more in depth into methods and properties later on 😉.
    
## Numbers

Numbers are values that can be used in mathematical operations. 
You don’t need any special syntax for numbers — just write them straight into JavaScript.

    > 12345;

Numbers can be integers, like 2, 14, or 4353, or they can be decimals,  
also known as floats, like 3.14, 1.5, or 100.7893423. 

Javascript doesn’t distinguish between whole numbers and decimals, 
so you can use them together without having to convert from one to the other.

    > 10 + 3.14159;
    13.14159
    
We can also see that we have done our first math **operation** in Javascript.
We can use Javascript to do all kinds of calculations!

We can also store the result of an operation into a variable

    > var ten = 10;
    > ten + 10
    20

## Boolean

Booleans are values that can be only one of two things: `true` or `false`.

Anything “on” or “off,” “yes” or “no,” or temporary is a usually good fit for a boolean.

As all other types boolean values can be stored inside variables

    > var truthy = true
    > a
    true
    
They can also be created through a boolean *operation*
    
    > 1 == 2
    false

We just used a *equal to* (`==`) operator. This type is called a **logical operator** and we'll look more into them later on!

## Operators

In previous examples we have done **operations** on values. These operations use 

Operators are the symbols between values that allow different 
operations like addition, subtraction, multiplication, and more.

Operators allow us to assign values, compare values, perform arithmetic operations, and more.

Let's take a look at the different types of operators that Javascript gives us!

### Arithmetic Operators

Arithmetic operators take numerical values, either literals (such as `5`, `10.4`) or variables, as their 
operands and return a single numerical value.

Javascript contains the standard arithmetic operators such as addition (`+`), subtraction (`-`), multiplication (`*`), 
and division (`/`), plus others.

    > 5 * 5
    25
    
We can use variables mixed with literals

    > var six = 6
    > six / 2
    3
    
JavaScript expressions follow a **order of operation** or **operator precedence**.
Operator precedence describes the order in which operations are performed when an expression is evaluated. 
Operations with a higher precedence are performed before those with a lower precedence. 
For example, multiplication is performed before addition.

    > 1 + 100 * 5
    501
    
For more control over the order of operations we can use the **grouping** operator.

Group ***( )*** operator groups other values and operations. 

Code located between parentheses evaluates first as Javascript solves each operation moving from left to right.
Adding the grouping operator to the previous example causes 1 + 100 to evaluate first.

    > (1 + 100) * 5
    505

Click 
[here](https://docs.microsoft.com/en-us/scripting/javascript/operator-subtractprecedence-javascript)
 if you want to read more about operation precedence.
 
 Javascript also provides us with some other arithmetic operators, 
 [check them out](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Arithmetic_Operators) 
 and try them out in the console.

### Assignment Operators

Assignment operators are used to assign values to Javascript variables.

They assign the value on the right of the operand to one on the left.

    > var aValue = 'hello!'
    
You might have noticed that we have already been using this operator for a lot of exercises!

Besides the normal assignment operator we have compound assignment operators 
which apply the operation result to the variable that's being assigned. 

    > var add = 7;
    > add += 3;
    10
    
Here we can see that we that we are adding the value of `3` to the variable `add` contain the value `7`.
This would be equal to:

    > var add = 7;
    > add = add + 3;
    10
    
You can check out the full list of compound alignment operators 
[here](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Assignment_Operators).

### Comparison Operators

## Arrays

## Objects

## Functions

## Control Structures

### Conditional (`if-else`)

### Loop Structures (`while`, `do-while`, `for`, `forEach`)