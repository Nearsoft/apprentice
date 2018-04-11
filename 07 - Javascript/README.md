# Javascript
# JavaScript

> Parts of this chapter is based on tutorials by [Django Girls](https://tutorial.djangogirls.org/), 
[JavaScript: The Right Way](http://jstherightway.org/) and [Node School's JavaScripting](https://github.com/workshopper/JavaScripting)

## <a name="introduction"/> Introduction

### About JavaScript

> JavaScript® (often shortened to JS) is a lightweight, interpreted, object-oriented language with first-class functions, 
and is best known as the scripting language for Web pages, but it's used in many non-browser environments as well. - 


### Node.js Prompt

To start playing with JavaScript, we need to open up a command line on your computer. 
You should already know how to do that – you learned it in the [Intro to Command Line chapter](http://test.com).

Once you're ready, follow the instructions below.

We want to open up a Node.js REPL, so type in `node` hit enter.
```
$ node
>
```

After running the `node` command, the prompt changed to `>`. For us this means that for now we may only use commands in the JavaScript language. 
You don't have to type in `>` – Node will do that for you.

If you want to exit the Node REPL at any point, just type `.exit` or use the shortcut `Ctrl + C` twice. Then you won't see `>` any longer.

### Node.js Scripts

We can also run JavaScript scripts through Node.js by creating a file and running through Node.
```
# Create the file
$ touch myscript.js
# Add some content to the file
$ echo "console.log('hello world!')" > myscript.js
# Run the file through Node
$ node myscript.js
> hello world!
```

## <a name="variables"/> Variables

A variable is a name that can reference a specific value. Variables are declared using `var` followed by the variable's name.  
   
Here's an example:  
  
     > var example;
        
The above variable is declared, but it isn't defined (it does not yet reference a specific value).  

Here's an example of defining a variable, making it reference a specific value:  
```
> var example = 'some text'; 
```

A variable is declared using var and uses the equals sign to define the value that it references. This is colloquially known as "Making a variable equal a value".
We can see this value in the console with:
```
    > console.log(example);
    some string
```
    
We can also give an existing variable a new value at any point after it’s declared.
```
    > var os = 'Windows';
    > os = 'MacOS';
    > os;
    MacOS
```
Variable names are pretty flexible as long as you follow a few rules:

- Start with a letter, underscore (`_`), or dollar sign (`$`).
- After the first letter, you can use numbers, as well as letters, underscores, or dollar signs.
- Don’t use any of JavaScript’s reserved keywords.

Variable names are case-sensitive, so `myVar`, `MyVar`, and `myvar` are all different variables. 
    
## <a name="strings"/> Strings

In the last example we created a variable with the value of `some text`. The ***type*** of this variable is a **String**.

A string is a sequence of characters. A character is, roughly speaking, a written symbol. Examples of characters are letters, numbers, punctuation marks, and spaces.  

String values are surrounded by either single or double quotation marks.  
 ```
     'this is a string'  
            
     "this is also a string"
```
Strings can be strung together. Try this in your node console:
```
    > 'Hi There' + ' User'
```
You should get back:
```
    'Hi There User'
```
You can also multiply strings with a number:
```
    > 'Hello' * 3
    'HelloHelloHello
```

Strings have various **properties** and **methods** on them. To see some of them let's create a string variable:
```
    > var name = 'my name';
```
To see your name in uppercase letters, simply type:
  ```  
    > name.toUpperCase();
    'MY NAME'
   ``` 
You just used the `toUpperCase` **method** on your string! 
A method (like `toUpperCase()`) is a sequence of instructions that JavaScript has to perform on a given **object** ("user") once you call it.

If you want to know the number of letters contained in your name, there is a property for that!
```
    > name.length
    7
```
The above code will return a number for the total number of characters in the string variable.  
   
We'll look more in depth into methods and properties later on 😉.
    
## <a name="numbers"/> Numbers

Numbers are values that can be used in mathematical operations. 
You don’t need any special syntax for numbers — just write them straight into JavaScript.
```
    > 12345;
```
Numbers can be integers, like 2, 14, or 4353, or they can be decimals, also known as floats, like 3.14, 1.5, or 100.7893423. 

JavaScript doesn’t distinguish between whole numbers and decimals, so you can use them together without having to convert from one to the other.
```
    > 10 + 3.14159;
    13.14159
```
We can also see that we have done our first math **operation** in JavaScript.
We can use JavaScript to do all kinds of calculations!

We can also store the result of an operation into a variable
```
    > var ten = 10;
    > ten + 10
    20
```
## <a name="boolean"/> Boolean

Booleans are values that can be only one of two things: `true` or `false`.

Anything “on” or “off,” “yes” or “no,” or temporary is a usually good fit for a boolean.

As all other types boolean values can be stored inside variables
```
    > var truthy = true
    > a
    true
```
They can also be created through a boolean *operation*
```    
    > 1 == 2
    false
```
We just used a *equal to* (`==`) operator. This type is called a **comparison operator** and we'll look more into them later on!
## <a name="operators"/> Operators

In previous examples we have done **operations** on values. These operations use 

Operators are the symbols between values that allow different operations like addition, subtraction, multiplication, and more.

Operators allow us to assign values, compare values, perform arithmetic operations, and more.

Let's take a look at the different types of operators that JavaScript gives us!

### Arithmetic Operators

Arithmetic operators take numerical values, either literals (such as `5`, `10.4`) or variables, as their operands and return a single numerical value.

JavaScript contains the standard arithmetic operators such as addition (`+`), subtraction (`-`), multiplication (`*`), and division (`/`), plus others.
```
    > 5 * 5
    25
 ```
We can use variables mixed with literals
```
    > var six = 6
    > six / 2
    3
```  
JavaScript expressions follow a **order of operation** or **operator precedence**.
Operator precedence describes the order in which operations are performed when an expression is evaluated. 
Operations with a higher precedence are performed before those with a lower precedence. 
For example, multiplication is performed before addition.
```
    > 1 + 100 * 5
    501
```
For more control over the order of operations we can use the **grouping** operator.

Group ***( )*** operator groups other values and operations. 

Code located between parentheses evaluates first as JavaScript solves each operation moving from left to right.
Adding the grouping operator to the previous example causes 1 + 100 to evaluate first.
```
    > (1 + 100) * 5
    505
```
Click [here](https://docs.microsoft.com/en-us/scripting/JavaScript/operator-subtractprecedence-JavaScript) if you want to read more about operation precedence.
 
 JavaScript also provides us with some other arithmetic operators, [check them out](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Arithmetic_Operators) and try them out in the console.

### Assignment Operators

Assignment operators are used to assign values to JavaScript variables.

They assign the value on the right of the operand to one on the left.
```
    > var aValue = 'hello!'
```    
You might have noticed that we have already been using this operator for a lot of exercises!

Besides the normal assignment operator we have compound assignment operators which apply the operation result to the variable that's being assigned. 
```
    > var add = 7;
    > add += 3;
    10
```    
Here we can see that we that we are adding the value of `3` to the variable `add` contain the value `7`.
This would be equal to:
```
    > var add = 7;
    > add = add + 3;
    10
```    
You can check out the full list of compound alignment operators 
[here](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Assignment_Operators).

### Comparison Operators

There are two main types of value comparison that you will need to make in your JS programs: equality and relational. 
The result of any comparison is a boolean value (true or false), regardless of what value types are compared.

The values to compare can be numerical, string, logical, or object values.

Before we go into how to compare values, let's talk a bit about *coercion*.

#### Coercion

*Type coercion* means that when the operands of an operator are different types, one of them will be converted to an "equivalent" value of the others type. 

For instance, if we try to add a string to a number, it will try to convert the values into types that can be valid for the operation.
```
    > 'string' + 5
    string5
    > '42' * 2
    84
```    
As you can see this can lead to some surprising results sometimes which is why we got to be careful with operations between values of different types.
Though type coercion is thought to be a "bad" part of JavaScript, knowing how type coercion behaves can remove most of the "surprising" behavior usually associated with it.

Here's more on info on how [type coercion](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators#Using_the_Equality_Operators) works in JavaScript.

#### Equality Operators

There are four equality operators: ==, ===, !=, and !==. 

We can compare two values like this:
```    
    > 2 === 2
    true
    > 'apple' !== 'orange'
    true
    > 'car' === 'bike'
    false
```    
As we could see the `!=` and `!==` inequality operator is the counterpart of an equality operator.

How about `==` vs `===`? The equal operator (`==`) checks if the two values are equal with *type coercion* allowed, while the strict equal operator checks for equal values without allowing coercion.
Knowing this we can see how they differ with an example:
```
    > 10 == '10'
    true
    > 10 === '10'
    false
```
As you can see the `===` operator doesn't allow type coercion to take place and returns a `false` value on a comparison when comparing a string to a number.

#### Relational Operators

Relational operators are typically used to compare number values. There are also 4 relational operators: `<` (less than), `>` (greater than), `<=` (less or equal to), `>=` (greater or equal to).

Relational operators attempt to evaluate operands into numbers, and do a numerical comparison on them.
```
    > 2 < 4
    true
    > 100 < 99
    false
    > 100 <= 100
    true
```    
### Logical Operators

Logical operators are typically used with Boolean values. When they are, they return a Boolean value.

The three logical operators are: `&&` (logical AND), `||` (logical OR) and `!` (logical NOT).
```
    > true && false;
    false
    > true || false;
    true
    > !true;
    false
```
Since we previously saw that relational operators return boolean values, we can use them together with logical operators!
```
    > (5 > 4) && (10 !== 9);
    true
    > var name = 'Juan';
    > var age = 17;
    > name === 'John' || age > 18;
    false
```    
The `&&` and `||` operators actually return the value of one of the specified operands, so if these operators are used with non-Boolean values, they may return a non-Boolean value.
 ```  
    > 'hello!' || false
    'hello!'
    > 0 && true
    0
```
These values are evaluated for *falsy* or *truthy* values on boolean operations. 
So what exactly are these *falsy* and *truthy* values?

#### Truthy & Falsy

A "truthy" value is a value that translates to `true` when evaluated in a boolean context.
On the opposite end, a "falsy" value evaluates to `false` in a boolean context.

The specific list of "falsy" values in JavaScript is as follows:

- `""` (empty string)
- `0`, `-0`, `NaN` (invalid number)
- `null`
- `undefined`
- `false`

Any value that's not on this "falsy" list is "truthy." Here are some examples of those:
```
> !!"hello" // We use the double negation symbol to evaluate as a boolean
true
> !!42
true
> !!true
true
```
## <a name="arrays"/> Arrays

Arrays are container-like values that can hold other values. The values inside an array are called _elements_.
Arrays are used to store multiple values in a single variable.

The easiest way to create an array is to use an **array literal**, which are the enclosing brackets `[]`.
Inside the brackets we place the values we want to store inside the array separated by commas.

```javascript
var cars = ["Toyota", "Chevrolet", "Nissan"];
```

Array elements don’t all have to be the same type of value. Elements can be any kind of JavaScript value — even other arrays.

```javascript
var hodgepodge = [100, "paint", false, [2.5, "brush"]];
```

### Accessing Array Elements

To access one of the elements inside an array, you’ll need to use the brackets and a number like this: `myArray[3]`. 
This number is called the element `index`.
JavaScript arrays begin with an index value of `0`, so the first element will always be inside `[0]`.

```
> var fruits = ['apple', 'orange', 'banana']
> fruit[1]
'orange'
```

### Interacting with the array

We can replace a particular element of an array by using the assignment operator of the arrays index we want to replace.
```
> var favoriteColors = ['red', 'green', 'blue']
> favoriteColors[2] = 'pink'
> favoriteColors
['red', 'green', 'pink']
```

### Properties and Methods

Arrays contain some inherited properties and methods that can be used to interact with it.

#### length
An array’s `length` property stores the number of elements inside the array. 
```
> ["a", "b", "c", 1, 2, 3].length;
6
```

#### push
An array’s `push` method adds an element to the array and returns the array’s length.
```
> var people = ["miguel", "jose"]
> people.push("jasmin")
3
> people
["miguel", "jose", "jasmin"]
```

#### pop
An array’s pop method removes the last element in the array and returns that element’s value.
```
> var planets = ["Jupiter", "Saturn", "Uranus", "Neptune", "Pluto"]
> planets.pop()
Pluto
> planets
["Jupiter", "Saturn", "Uranus", "Neptune"]
```

#### concat
An array’s `concat` method returns a new array that combines the values of two arrays.
```
> ["tortilla chips"].concat(["salsa", "queso", "guacamole"])
["tortilla chips", "salsa", "queso", "guacamole"]
```

One thing to note is that `concat` does not modify the original array, but instead returns a new array with the merge of the two arrays.
```
> var ingredients = ["salsa", "queso", "guacamole"]
> ingredients.concat(["beans"])
["salsa", "queso", "guacamole", "beans"]
> ingredients
["salsa", "queso", "guacamole"]
```

#### slice
An array's `slice` method returns a new array that is a partial copy of the original array.
It uses a `begin` index and an optional `end` index.
```
> var planets = ["Jupiter", "Saturn", "Uranus", "Neptune", "Pluto"]
> planets.slice(1,3)
["Saturn", "Uranus", "Neptune"]
```
We can also not specify the `end` index and it will default to slice from the `begin` index until the last item in the array.
```
> planets.slice(1)
["Saturn", "Uranus", "Neptune", "Pluto"]
```
`slice` also does not modify the original array.
```
> planets
["Jupiter", "Saturn", "Uranus", "Neptune", "Pluto"]
```

## <a name="functions"/> Functions

### Functions as "First Class Objects"

## Conditionals
Conditionals control behavior in JavaScript and determine whether or not pieces of code can run.

### if
The most common type of conditional is the if statement, which only runs if the condition enclosed in parentheses () is [truthy](#boolean).
```javascript
var outcome = ''
if (10 > 5) {
    outcome = "inside if block";
}
console.log(outcome)
```
This block of code prints out `"inside if block"`.

(Note: You can use `shift+enter` to enter multiple lines into the console.)

Here’s what’s happening in the example above:
    
* The keyword `if` tells JavaScript to start the conditional statement.
* `(10 > 5)` is the condition to test, which in this case is true — 10 is greater than 5.
* The part contained inside curly braces `{}` is the block of code to run.
* Because the condition passes, the variable `outcome` is assigned the value `"inside if block"`.

The condition to test can be any boolean value that will be evaluated for a `truthy` value.

* `'hello'.length > 0`
* `20 > 10`
* `true`
* `cake' === 'cake'`

Will all evaluate to true and if placed inside the `if` conditional will make the body of the if statement (the block inside the curly braces) run.

### else

You can extend an `if` statement with an `else` statement, which adds another block to run when the if conditional doesn’t pass.

```javascript
var outcome = ''
if ("cat" === "dog") {
    outcome = "if block";
} else {
    outcome = "else block";
}
console.log(outcome)
```
This block of code prints out `"inside else block"`.

### else if
You can also extend an `if` statement with an `else if` statement, which adds another conditional with its own block.
```javascript
var outcome = "";
var favoriteAnimal = "dog"
if (favoriteAnimal === "cat") {
    outcome = "if block";
} else if (favoriteAnimal === "dog") {
    outcome = "else if block";
} else {
    outcome = "else block";
}
console.log(outcome)
```
This block of code should print out `"else if block"`.
It will first evaluate the first `if` conditional and after it fails will attempt to evaluate the `if else` statement.
Once here it will find a `truthy` evaluation and will run the code inside the `else if` block.
Since it successfully evaluated a condition it will not run the `else` block.

You can use multiple if else conditionals, but note that only the first else if block runs. JavaScript skips any remaining conditionals after it runs the first one that passes. 
```javascript
var outcome = "";
var favoriteAnimal = "dog"
if (favoriteAnimal === "cat") {
    outcome = "if block";
} else if (favoriteAnimal === "dog") {
    outcome = "first if else block";
} else if (favoriteAnimal === "dog") {
      outcome = "second if else block";
  } else {
    outcome = "else block";
}
console.log(outcome)
```
The block of code should print out `"first if else block"` even though the second `if else` conditional also evaluates to true.

### nesting if...else

Sometimes a single conditional isn't enough for the logic we are trying to build. For that we can nest `if, else, else-if` statements.
```javascript
var weather = "sunny";
var temperature = 28;
var forecast;
if (weather === "sunny") {
  if (temperature > 30) {
    forecast = "It's going to be really hot outside, don't forget you're sunscreen!"
  }
  else if (temperature <= 30 && temprature > 20){
    forecast = "It's nice and sunny today, try to go outside!"
  }
  else {
    forecast = "It's going to be chilly today, don't forget a sweater!"
  }
}
console.log(forecast)
```
Even though the code all works together, each `if else` statement works completely independently of the other one.

## <a name="control-structures"/> Loop Structures

### While / Do-While

### For

### forEach

### map

## <a name="objects"/> Objects

An object is a collection of related data and/or functionality (which usually consists of several variables and functions — which are called properties and methods when they are inside objects.)

In JavaScript, most things are objects, and we have been using them in some ways already throughout other lessons!

We have already seen that variables are container for data values. Objects can be assigned to variables, and can also be used as a 
 
 Javascript simple types:
 
 * numbers (has object-like methods but they are immutable)
 * strings (has object-like methods but they are immutable)
 * booleans (has object-like methods but they are immutable)
 * null
 * undefined
 
 All other values are objects including [arrays](#arrays) and [functions](#functions).
 
 ### Dot Notation
 
 ### Object Creation
