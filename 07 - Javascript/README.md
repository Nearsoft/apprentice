# Javascript

> Parts of this chapter is based on tutorials by [Django Girls](https://tutorial.djangogirls.org/), 
[Javascript: The Right Way](http://jstherightway.org/) and [Node School's Javascripting](https://github.com/workshopper/Javascripting)

## <a name="introduction"/> Introduction

### About Javascript

> Javascript® (often shortened to JS) is a lightweight, interpreted, object-oriented language with first-class functions,
and is best known as the scripting language for Web pages, but it's used in many non-browser environments as well. -

### Node.js Prompt

To start playing with Javascript, we need to open up a command line on your computer. 
You should already know how to do that – you learned it in the [Intro to Command Line chapter](http://test.com).

Once you're ready, follow the instructions below.

We want to open up a Node.js REPL, so type in `node` hit enter.

    $ node
    >

After running the `node` command, the prompt changed to `>`. For us this means that for now we may only use commands in the Javascript language. 
You don't have to type in `>` – Node will do that for you.

If you want to exit the Node REPL at any point, just type `.exit` or use the shortcut `Ctrl + C` twice. Then you won't see `>` any longer.

### Node.js Scripts

We can also run Javascript scripts through Node.js by creating a file and running through Node.

    # Create the file
    $ touch myscript.js
    # Add some content to the file
    $ echo "console.log('hello world!')" > myscript.js
    # Run the file through Node
    $ node myscript.js
    > hello world!

## <a name="variables"/> Variables

A variable is a name that can reference a specific value. Variables are declared using `var` followed by the variable's name.
Here's an example:

     > var example;

The above variable is declared, but it isn't defined (it does not yet reference a specific value).

Here's an example of defining a variable, making it reference a specific value:

    > var example = 'some text';

A variable is declared using var and uses the equals sign to define the value that it references. This is colloquially known as "Making a variable equal a value".
We can see this value in the console with:

    > console.log(example);
    some string

We can also give an existing variable a new value at any point after it’s declared.

    > var os = 'Windows';
    > os = 'MacOS';
    > os;
    MacOS

Variable names are pretty flexible as long as you follow a few rules:

- Start with a letter, underscore (`_`), or dollar sign (`$`).
- After the first letter, you can use numbers, as well as letters, underscores, or dollar signs.
- Don’t use any of Javascript’s reserved keywords.

Variable names are case-sensitive, so `myVar`, `MyVar`, and `myvar` are all different variables.

## <a name="strings"/> Strings

In the last example we created a variable with the value of `some text`. The ***type*** of this variable is a **String**.

A string is a sequence of characters. A character is, roughly speaking, a written symbol. Examples of characters are letters, numbers, punctuation marks, and spaces.

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
A method (like `toUpperCase()`) is a sequence of instructions that Javascript has to perform on a given **object** ("user") once you call it.

If you want to know the number of letters contained in your name, there is a property for that!

    > name.length
    7

The above code will return a number for the total number of characters in the string variable.

We'll look more in depth into methods and properties later on 😉.

## <a name="numbers"/> Numbers

Numbers are values that can be used in mathematical operations. 
You don’t need any special syntax for numbers — just write them straight into Javascript.

    > 12345;

Numbers can be integers, like 2, 14, or 4353, or they can be decimals, also known as floats, like 3.14, 1.5, or 100.7893423.

Javascript doesn’t distinguish between whole numbers and decimals, so you can use them together without having to convert from one to the other.

    > 10 + 3.14159;
    13.14159

We can also see that we have done our first math **operation** in Javascript.
We can use Javascript to do all kinds of calculations!

We can also store the result of an operation into a variable

    > var ten = 10;
    > ten + 10
    20

## <a name="boolean"/> Boolean

Booleans are values that can be only one of two things: `true` or `false`.

Anything “on” or “off,” “yes” or “no,” or temporary is a usually good fit for a boolean.

As all other types boolean values can be stored inside variables

    > var truthy = true
    > a
    true

They can also be created through a boolean *operation*

    > 1 == 2
    false

We just used a *equal to* (`==`) operator. This type is called a **comparison operator** and we'll look more into them later on!

## <a name="operators"/> Operators

In previous examples we have done **operations** on values. These operations use 

Operators are the symbols between values that allow different operations like addition, subtraction, multiplication, and more.

Operators allow us to assign values, compare values, perform arithmetic operations, and more.

Let's take a look at the different types of operators that Javascript gives us!

### Arithmetic Operators

Arithmetic operators take numerical values, either literals (such as `5`, `10.4`) or variables, as their operands and return a single numerical value.

Javascript contains the standard arithmetic operators such as addition (`+`), subtraction (`-`), multiplication (`*`), and division (`/`), plus others.

    > 5 * 5
    25

We can use variables mixed with literals

    > var six = 6
    > six / 2
    3

Javascript expressions follow a **order of operation** or **operator precedence**.
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

Click [here](https://docs.microsoft.com/en-us/scripting/Javascript/operator-subtractprecedence-Javascript) if you want to read more about operation precedence.

 Javascript also provides us with some other arithmetic operators, [check them out](https://developer.mozilla.org/en-US/docs/Web/Javascript/Reference/Operators/Arithmetic_Operators) and try them out in the console.

### Assignment Operators

Assignment operators are used to assign values to Javascript variables.

They assign the value on the right of the operand to one on the left.

    > var aValue = 'hello!'

You might have noticed that we have already been using this operator for a lot of exercises!

Besides the normal assignment operator we have compound assignment operators which apply the operation result to the variable that's being assigned. 

    > var add = 7;
    > add += 3;
    10

Here we can see that we that we are adding the value of `3` to the variable `add` contain the value `7`.
This would be equal to:

    > var add = 7;
    > add = add + 3;
    10

You can check out the full list of compound alignment operators [here](https://developer.mozilla.org/en-US/docs/Web/Javascript/Reference/Operators/Assignment_Operators).

### Comparison Operators

There are two main types of value comparison that you will need to make in your JS programs: equality and relational. 
The result of any comparison is a boolean value (true or false), regardless of what value types are compared.

The values to compare can be numerical, string, logical, or object values.

Before we go into how to compare values, let's talk a bit about *coercion*.

#### Coercion

*Type coercion* means that when the operands of an operator are different types, one of them will be converted to an "equivalent" value of the others type. 

For instance, if we try to add a string to a number, it will try to convert the values into types that can be valid for the operation.

    > 'string' + 5
    string5
    > '42' * 2
    84

As you can see this can lead to some surprising results sometimes which is why we got to be careful with operations between values of different types.
Though type coercion is thought to be a "bad" part of Javascript, knowing how type coercion behaves can remove most of the "surprising" behavior usually associated with it.

Here's more on info on how [type coercion](https://developer.mozilla.org/en-US/docs/Web/Javascript/Reference/Operators/Comparison_Operators#Using_the_Equality_Operators) works in Javascript.

#### Equality Operators

There are four equality operators: ==, ===, !=, and !==.

We can compare two values like this:

    > 2 === 2
    true
    > 'apple' !== 'orange'
    true
    > 'car' === 'bike'
    false

As we could see the `!=` and `!==` inequality operator is the counterpart of an equality operator.

How about `==` vs `===`? The equal operator (`==`) checks if the two values are equal with *type coercion* allowed, while the strict equal operator checks for equal values without allowing coercion.
Knowing this we can see how they differ with an example:

    > 10 == '10'
    true
    > 10 === '10'
    false

As you can see the `===` operator doesn't allow type coercion to take place and returns a `false` value on a comparison when comparing a string to a number.

#### Relational Operators

Relational operators are typically used to compare number values. There are also 4 relational operators: `<` (less than), `>` (greater than), `<=` (less or equal to), `>=` (greater or equal to).

Relational operators attempt to evaluate operands into numbers, and do a numerical comparison on them.

    > 2 < 4
    true
    > 100 < 99
    false
    > 100 <= 100
    true

### Logical Operators

Logical operators are typically used with Boolean values. When they are, they return a Boolean value.

The three logical operators are: `&&` (logical AND), `||` (logical OR) and `!` (logical NOT).

    > true && false;
    false
    > true || false;
    true
    > !true;
    false

Since we previously saw that relational operators return boolean values, we can use them together with logical operators!

    > (5 > 4) && (10 !== 9);
    true
    > var name = 'Juan';
    > var age = 17;
    > name === 'John' || age > 18;
    false

The `&&` and `||` operators actually return the value of one of the specified operands, so if these operators are used with non-Boolean values, they may return a non-Boolean value.

    > 'hello!' || false
    'hello!'
    > 0 && true
    0

These values are evaluated for *falsy* or *truthy* values on boolean operations. 
So what exactly are these *falsy* and *truthy* values?

#### Truthy & Falsy

A "truthy" value is a value that translates to `true` when evaluated in a boolean context.
On the opposite end, a "falsy" value evaluates to `false` in a boolean context.

The specific list of "falsy" values in Javascript is as follows:

- `""` (empty string)
- `0`, `-0`, `NaN` (invalid number)
- `null`
- `undefined`
- `false`

Any value that's not on this "falsy" list is "truthy." Here are some examples of those:

> !!"hello" // We use the double negation symbol to evaluate as a boolean
true
> !!42
true
> !!true
true

## <a name="arrays"/> Arrays

Arrays are container-like values that can hold other values. The values inside an array are called _elements_.
Arrays are used to store multiple values in a single variable.

The easiest way to create an array is to use an **array literal**, which are the enclosing brackets `[]`.
Inside the brackets we place the values we want to store inside the array separated by commas.

```javascript
var cars = ["Toyota", "Chevrolet", "Nissan"];
```

Array elements don’t all have to be the same type of value. Elements can be any kind of Javascript value — even other arrays.

```javascript
var values = [100, "paint", false, [2.5, "brush"]];
```

### Accessing Array Elements

To access one of the elements inside an array, you’ll need to use the brackets and a number like this: `myArray[3]`.
This number is called the element `index`.
Javascript arrays begin with an index value of `0`, so the first element will always be inside `[0]`.

    > var fruits = ['apple', 'orange', 'banana']
    > fruit[1]
    'orange'

### Interacting with the array

We can replace a particular element of an array by using the assignment operator of the arrays index we want to replace.

    > var favoriteColors = ['red', 'green', 'blue']
    > favoriteColors[2] = 'pink'
    > favoriteColors
    ['red', 'green', 'pink']

### Properties and Methods

Arrays contain some inherited properties and methods that can be used to interact with it.

#### length

An array’s `length` property stores the number of elements inside the array.

    > ["a", "b", "c", 1, 2, 3].length;
    6

#### push

An array’s `push` method adds an element to the array and returns the array’s length.

    > var people = ["miguel", "jose"]
    > people.push("jasmin")
    3
    > people
    ["miguel", "jose", "jasmin"]

#### pop

An array’s pop method removes the last element in the array and returns that element’s value.

    > var planets = ["Jupiter", "Saturn", "Uranus", "Neptune", "Pluto"]
    > planets.pop()
    Pluto
    > planets
    ["Jupiter", "Saturn", "Uranus", "Neptune"]

#### concat

An array’s `concat` method returns a new array that combines the values of two arrays.

    > ["tortilla chips"].concat(["salsa", "queso", "guacamole"])
    ["tortilla chips", "salsa", "queso", "guacamole"]

One thing to note is that `concat` does not modify the original array, but instead returns a new array with the merge of the two arrays.

    > var ingredients = ["salsa", "queso", "guacamole"]
    > ingredients.concat(["beans"])
    ["salsa", "queso", "guacamole", "beans"]
    > ingredients
    ["salsa", "queso", "guacamole"]

#### slice

An array's `slice` method returns a new array that is a partial copy of the original array.
It uses a `begin` index and an optional `end` index.

    > var planets = ["Jupiter", "Saturn", "Uranus", "Neptune", "Pluto"]
    > planets.slice(1,3)
    ["Saturn", "Uranus", "Neptune"]

We can also not specify the `end` index and it will default to slice from the `begin` index until the last item in the array.

    > planets.slice(1)
    ["Saturn", "Uranus", "Neptune", "Pluto"]

`slice` also does not modify the original array.

    > planets
    ["Jupiter", "Saturn", "Uranus", "Neptune", "Pluto"]

## <a name="functions"/> Functions

Functions are a set of statements that perform a task or calculate a value, which can be named and reused.
Let's take a look at a `function declaration` example.

```javascript
function addTwoNumbers(x, y) {
    return x + y;
}
```

Let's look at each part individually:

- `function` is the **keyword** that starts declaring a function.
- `addTwoNumbers` is the function's **name**, which name can be anything that follows the variable name conventions. A functions name is optional.
- `(x, y)` are the function **parameters**, which are variables names for the inputs a function takes when it's **called**.
- `return` is the `keyword` that exits a function and that can share an optional value to where the function was **called**.

In this case the function `returns` the result of the sum of `x` and `y`.

### Calling functions

Once a function is defined, you can use it by referencing its name with parentheses `()` right after.

```javascript
function sayHi() {
    return "Hello World!";
}
sayHi(); // Result: "Hello World!";
```

Functions can be called or **invoked** at any part of our program and we can even invoke functions inside functions!

```javascript
function sayHello() {
    console.log("Hello!");
}

function sayHelloWorld() {
    sayHello();
    console.log("World!");
}
sayHelloWorld(); // Result: "Hello! World!";
```

Running this block of code should print out "Hello! World!" to the console.

### Function `return` value

Functions can be used not only to do some task, but they can **return** a result.
This value can be used the same way as any other expresion value.

```javascript
function giveMeFive() {
    return 5;
}
var ten = giveMeFive() + 5;
console.log(ten); // Result: 10
```

Javascript functions always return a value, be it explicitly or implicitly. If a `return` value is not specified the function retuns `undefined`.

### Function parameters

In the previous examples the functions we are declaring did not have any **parameters**. Parameters are not necesary for functions to be declared or called, but are useful for passing data into function.

Function parameters are declared inside the function declaration parentheses `()` and separated by commas.

```javascript
function square(number) {
    return number * number;
}
```

In this example the `square` function takes one parameter, called `number`, and **returns** the result of multipling the `number` parameter by itself.

```javascript
var result = square(5);
console.log(result); // Result: 25
```

We **call** the function by using referencing the name with parenteses right after, providing the **parameter value** inside them.

A function can take multiple parameters, separating each parameter value with commas.

```javascript
function sum(a, b) {
    return a + b;
}
var result = sum(2, 3);
console.log(result); // Result: 5
```

### Functions as "first-class objects"

In Javascript functions are treated as **first-class objects**. What this means is that functions can be assigned as a value to a variable, passed as argument to other functions and can be returned by another function.

#### Functions as variables

```javascript
var screamItOut = function (text) {
    return text.toUpperCase() + '!';
}
screamItOut("hey you") // Returns: HEY YOU!
```

In this example a number of things are happening:

1. We are using creating a **function expression**, which is similar to a **function declaration** but without giving a name to the function.
2. We are assigning the **function expression** to the `screamItOut` variable. Since Javascript treats functions like any other value, we can save this function to the variable.

#### Functions as parameters

We can also pass functions as parameters:

```javascript
function goGetData(onDone) {
    const calculation = (10 + 40) / 10;
    return onDone(calculation);
}
var getResult = function (result) {
    return "Done! Result: " + result;
}
// Passing "done" function as a parameter
goGetData(getResult); // Result: "Done! Result: 5
```

We passed the `getResult` variable as a function parameter and executing this function inside the `goGetData` function. `goGetData` passes the `calculation` into the function parameter and return of the result of the `onDone` function passed to it.
This kind of pattern is specially useful when doing **asyncronous operations** in which we can execute the function when the async action or when we do **event handling**.

### Functions as `return` values

Since functions can be used like any other value in Javascript that leaves the posibility to `return` function as a result of another functions execution.

```javascript
function add(a) {
    // We are returning an anonymous function here.
    return function (b) {
        return a + b;
    }
}
var add2 = add(2);

console.log(add2(2)); // Result: 4
console.log(add2(10)); // Result: 12
```

Here we are returning a new function from inside the `add` function, that takes `b` as a second parameter.
This returned function can then later be called which will return the result of the sum of the parameter of the `add` function and the parameter passed on to the "returned" function.

You may be wondering how the returned function has access to the `a` variable when it's time to return the sum.
This is due to how **scope** works in Javascript, and what we're about to see next!

### Function scope

In the last example we worked with an example of a function returning a function. We noticed that even though the execution of the `add` function has finished, the returned function still has access to the `a` parameter.

This is due to how **scope** is managed in Javascript. So what is **scope**?

**Scope** is the accessibility of variables, functions, and objects in some particular part of your code during execution. In other words, scope determines the visibility of variables and other resources in areas of your code.

The top level outside all your functions is called the global scope. Values defined in the global scope are accessible from everywhere in the code.

Other programming languages like C#, Java and Python, have **block scope**. This means that all accesiblity and visiblity is contained inside a block.
In contrast to that Javascript has **function scope**, in which a function has access to all variables and functions defined in itself, in it's parent function and any other variable to which the parent function has access.

It is sometimes thought of that functions create their own **scope bubbles** in which they have access to their own scope and their containers, but the function in which they reside in does not have access to the inner functions scope.

Let's see an example that shows this:

```javascript
function test() {
    var insideTest = "test";
    function one() {
        var insideOne = 1;
        console.log("Inside one: " + insideOne); // Result: 1
        console.log("Inside one: " + insideTest); // Result: "test"
    }
    one();
    console.log("inside test: " + insideTest); // Result: "test"
    console.log("inside test: " + insideOne); // Result: Error: insideOne is not defined
}
```

We can see that `one` function has access to both `insideTest` and `insideOne` variables, `test` only has access to `insideTest` and gives an error when we try to access `insideOne`.
This is due to the **scope bubble** we talked about forming around the `one` function.

When we nest function inside one another like we did in the previous example we form what is called a **closure**. Closures are a really powerful concept in Javascript, here's some [more info](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions#Nested_functions_and_closures) if you want to learn more about them.
For now you can think of closure as a way to "remember" and continue to access a function's scope (it's variables) even once the function has finished running.

## Conditionals

Conditionals control behavior in Javascript and determine whether or not pieces of code can run.

### if

The most common type of conditional is the if statement, which only runs if the condition enclosed in parentheses () is [truthy](#boolean).

```javascript
var outcome = ''
if (10 > 5) {
    outcome = "inside if block";
}
console.log(outcome) // Result: "inside if block"
```

(Note: You can use `shift+enter` to enter multiple lines into the console.)

Here’s what’s happening in the example above:

- The keyword `if` tells Javascript to start the conditional statement.
- `(10 > 5)` is the condition to test, which in this case is true — 10 is greater than 5.
- The part contained inside curly braces `{}` is the block of code to run.
- Because the condition passes, the variable `outcome` is assigned the value `"inside if block"`.

The condition to test can be any boolean value that will be evaluated for a `truthy` value.

- `'hello'.length > 0`
- `20 > 10`
- `true`
- `cake' === 'cake'`

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
console.log(outcome) // Result: "inside else block"
```

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
console.log(outcome) // Result: "else if block"
```

It will first evaluate the first `if` conditional and after it fails will attempt to evaluate the `if else` statement.
Once here it will find a `truthy` evaluation and will run the code inside the `else if` block.
Since it successfully evaluated a condition it will not run the `else` block.

You can use multiple if else conditionals, but note that only the first else if block runs. Javascript skips any remaining conditionals after it runs the first one that passes.

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
console.log(outcome) // Result: "first if else block"
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
console.log(forecast); // Result: "It's nice and sunny today, try to go outside!"
```

Even though the code all works together, each `if else` statement works completely independently of the other one.

### switch

There are cases where you want to compare a single value to different options. This is possible to do through multiple `if...else` statements though it can quickly get difficult to read and mantain.

    if (animal === "dog") {
    ...
    } else if (animal === "cat") {
    ...
    } else if (animal === "parrot") {
    ...
    }
    ...

`switch` statements can be your friend in this case, they take a single expression/value as an input and compare it to a number of choices associated with a value, executing the corresponding code when a match is found.

    switch (pet) {
        case "dog":
            ... // code to run
            break;
        case "cat":
            ...
            break;
        case "parrot":
            ...
            break;
        default:
            ... // Run this code if no option matches
    }

## <a name="control-structures"/> Loop Structures

### While / Do-While

### For

### map

## <a name="objects"/> Objects

An object is a collection of related data and/or functionality (which usually consists of several variables and functions — which are called properties and methods when they are inside objects.)

In Javascript, most things are objects, and we have been using them in some ways already throughout other lessons!

We have already seen that variables are container for data values. Objects can be assigned to variables, and can also be used as a 

 Javascript simple types:

- numbers (has object-like methods but they are immutable)
- strings (has object-like methods but they are immutable)
- booleans (has object-like methods but they are immutable)
- null
- undefined

 All other values are objects including [arrays](#arrays) and [functions](#functions).

### Dot Notation

### Methods

### Object Creation

### Prototype and Inheritance
