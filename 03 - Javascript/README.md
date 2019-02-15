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

    $ node
    >

After running the `node` command, the prompt changed to `>`. For us this means that for now we may only use commands in the JavaScript language. 
You don't have to type in `>` – Node will do that for you.

If you want to exit the Node REPL at any point, just type `.exit` or use the shortcut `Ctrl + C` twice. Then you won't see `>` any longer.

### Node.js Scripts

We can also run JavaScript scripts through Node.js by creating a file and running through Node.

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
- Don’t use any of JavaScript’s reserved keywords.

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
A method (like `toUpperCase()`) is a sequence of instructions that JavaScript has to perform on a given **object** ("user") once you call it.

If you want to know the number of letters contained in your name, there is a property for that!

    > name.length
    7

The above code will return a number for the total number of characters in the string variable.

We'll look more in depth into methods and properties later on 😉.

## <a name="numbers"/> Numbers

Numbers are values that can be used in mathematical operations. 
You don’t need any special syntax for numbers — just write them straight into JavaScript.

    > 12345;

Numbers can be integers, like 2, 14, or 4353, or they can be decimals, also known as floats, like 3.14, 1.5, or 100.7893423.

JavaScript doesn’t distinguish between whole numbers and decimals, so you can use them together without having to convert from one to the other.

    > 10 + 3.14159;
    13.14159

We can also see that we have done our first math **operation** in JavaScript.
We can use JavaScript to do all kinds of calculations!

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

Let's take a look at the different types of operators that JavaScript gives us!

### Arithmetic Operators

Arithmetic operators take numerical values, either literals (such as `5`, `10.4`) or variables, as their operands and return a single numerical value.

JavaScript contains the standard arithmetic operators such as addition (`+`), subtraction (`-`), multiplication (`*`), and division (`/`), plus others.

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

Code located between parentheses evaluates first as JavaScript solves each operation moving from left to right.
Adding the grouping operator to the previous example causes 1 + 100 to evaluate first.

    > (1 + 100) * 5
    505

Click [here](https://docs.microsoft.com/en-us/scripting/JavaScript/operator-subtractprecedence-JavaScript) if you want to read more about operation precedence.

 JavaScript also provides us with some other arithmetic operators, [check them out](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Arithmetic_Operators) and try them out in the console.

### Assignment Operators

Assignment operators are used to assign values to JavaScript variables.

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

You can check out the full list of compound alignment operators [here](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Assignment_Operators).

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
Though type coercion is thought to be a "bad" part of JavaScript, knowing how type coercion behaves can remove most of the "surprising" behavior usually associated with it.

Here's more on info on how [type coercion](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Comparison_Operators#Using_the_Equality_Operators) works in JavaScript.

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

The specific list of "falsy" values in JavaScript is as follows:

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

Array elements don’t all have to be the same type of value. Elements can be any kind of JavaScript value — even other arrays.

```javascript
var values = [100, "paint", false, [2.5, "brush"]];
```

### Accessing Array Elements

To access one of the elements inside an array, you’ll need to use the brackets and a number like this: `myArray[3]`.
This number is called the element `index`.
JavaScript arrays begin with an index value of `0`, so the first element will always be inside `[0]`.

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

JavaScript functions always return a value, be it explicitly or implicitly. If a `return` value is not specified the function retuns `undefined`.

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

## Conditionals

Conditionals control behavior in JavaScript and determine whether or not pieces of code can run.

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

- The keyword `if` tells JavaScript to start the conditional statement.
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
console.log(outcome); // Result: "first if else block"
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

This is how it works:

- The switch **expression** is evaluated once.
- The value of the expression is compared with the value of each case.
- If there is a match, the associated block of code is executed.

When JavaScript reaches a **break** keyword, it breaks out of the switch block. This will stop the execution of more code and case testing inside the block.

The **default** keyword specifies the code to run if there is no case match:

```javascript
switch (new Date().getDay()) {
    case 6:
        text = "Today is Saturday";
        break;
    case 0:
        text = "Today is Sunday";
        break;
    default:
        text = "Looking forward to the Weekend";
}
```

Here we can see that if the evaluated expression does not match any case, the `text` value is going to equal `"Looking forward to the Weekend"`.

## <a name="control-structures"/> Loop Structures

Loops are a building block for all programming languages. Loops can execute a block of code a number of times. Each loop is normally refered to as an **iteration** in programming languages.

A loop usually has one or more of the following features:

- A **counter**, which is set initially with a certain value.
- A **condition** which determines if the loop starts or stops.
- An **iterator** which is a statement that is executed after every iteration.

Out of these three the only necessary one to be able to create a loop is a **condition** to determine to continue with the iterations.

### For Loop

The most common type of loop is the **for loop**. Let's take a look at the general syntax for a **for loop**.

```
for (initializer; exit-condition; final-expression) {
    // code to run
}
```

Here we have:

1. The keyword **`for`**, followed by some parentheses.
2. Inside the parentheses we have three items, separated by semi-colons:
    1. An **`initializer`** — this is usually a variable set to a number, which is incremented to count the number of times the loop has run.
    2. An **`exit condition`** — as mentioned before, this defines when the loop should stop looping.
    3. A **`final expression`** — this is always evaluated (or run) each time the loop has gone through a full iteration.
3. Some curly braces that contain a block of code — this code will be run each time the loop iterates.

Let's look at a real example so we can visualize what these do more clearly.

```javascript
var cars = ["Nissan", "Mazda", "Toyota"];

for (var i = 0; i < cars.length; i++) {
  console.log(cars[i]);
}
console.log("DONE!");
```

What is this block of code going to do?

1. Declare a variable to which we're going to assign an array of 3 string elements.
2. Start an iteration in which we are going to declare the initial value of the **`i`** variable to `0`;
3. Run the `exit condition` and see if it returns a true or false value. In this case it's going to check if the value of `i` is less than the length of elements.
4. Run the code inside the brackets, in which we are going to print out the value of the array with the index of `i`. This is totally common not just in JavaScript but in most programming languages.
5. After all stements inside the code block are executed, we run the `final expression` in which we are going to increment the value of `i` by `1`.
6. We are going to again run the `exit condition` expression and see if it returns a `true` or `false` value. If true we return to step `4`.
7. If the `exit condition` ever returns `false` we are going to exit the `for` loop and continue with the rest of the code.

### While

For loops are not the only type of loop available. Another very common loop is the **`while`** loop.

Let's take a look at the while loop's syntax:

```
while (exit-condition) {
  // code to run

  final-expression
}
```

The while loop works very similar to the for loop, but in this case we don't have an explicit **initializer** or **final expression**. The while loop dependends totally in that in our code block we are going to have some changes in **state** that eventually change the exit-condition.

If we do not do it and the initial `exit condition` results in a `true` value, the while loop is going to continue to run forever until we stop it by force.

Let's check an example that does the same as the `for` loop example:

```javascript
var i = 0;
var cars = ["Nissan", "Mazda", "Toyota"];
while (i < cars.length) {
  console.log(cars[i]);
  i++;
}
console.log("DONE!");
```

## <a name="functions-in-javascript" /> Functions in JavaScript

### Functions as "first-class objects"

In JavaScript functions are treated as **first-class objects**. What this means is that functions can be assigned as a value to a variable, passed as argument to other functions and can be returned by another function.

#### Functions as variables

```javascript
var screamItOut = function (text) {
    return text.toUpperCase() + '!';
}
screamItOut("hey you") // Result: "HEY YOU!"
```

In this example a number of things are happening:

1. We are using creating a **function expression**, which is similar to a **function declaration** but without giving a name to the function.
2. We are assigning the **function expression** to the `screamItOut` variable. Since JavaScript treats functions like any other value, we can save this function to the variable.

#### Functions as parameters - "Callbacks"

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

#### Functions as `return` values - "Currying"

Since functions can be used like any other value in JavaScript that leaves the posibility to `return` function as a result of another functions execution.

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
This is due to how **scope** works in JavaScript, and what we're about to see next!

### Function scope

In the last example we worked with an example of a function returning a function. We noticed that even though the execution of the `add` function has finished, the returned function still has access to the `a` parameter.

This is due to how **scope** is managed in JavaScript. So what is **scope**?

**Scope** is the accessibility of variables, functions, and objects in some particular part of your code during execution. In other words, scope determines the visibility of variables and other resources in areas of your code.

The top level outside all your functions is called the global scope. Values defined in the global scope are accessible from everywhere in the code.

Other programming languages like C#, Java and Python, have **block scope**. This means that all accesiblity and visiblity is contained inside a block.
In contrast to that JavaScript has **function scope**, in which a function has access to all variables and functions defined in itself, in it's parent function and any other variable to which the parent function has access.

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

When we nest function inside one another like we did in the previous example we form what is called a **closure**. Closures are a really powerful concept in JavaScript, here's some [more info](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Functions#Nested_functions_and_closures) if you want to learn more about them.
For now you can think of closure as a way to "remember" and continue to access a function's scope (it's variables) even once the function has finished running.


## <a name="objects"/> Objects

An object is a collection of related data and/or functionality (which usually consists of several variables and functions — which are called properties and methods when they are inside objects.)

In JavaScript, most things are objects, and we have been using them already throughout other lessons!

We have already seen that variables are container for data values. Objects can be assigned to variables, and can also be used as a container for data and common functionality.

 JavaScript's simple types are:

- numbers (has object-like methods but they are immutable)
- strings (has object-like methods but they are immutable)
- booleans (has object-like methods but they are immutable)
- null
- undefined

 All other values are objects including [arrays](#arrays) and [functions](#functions).

 We can declare an object like this:

```javascript
var course = {
    name: "Programming 101",
    start: 17,
    end: 20
};
```

So what's going on here?

- We open up a pair of curly braces `{}` to declare an **object literal** - we've literally written out the object contents as we've come to create it.
- We have added **members** to the object, each of which has a **name** or **key** and a **value**.
- We have assigned this object to a **variable**, in this case called **`course`**.
- Each **name/value pair** must be separated by a comma, and the **name** and **value** are separated by a colon.

The **value** of an object **member** can be pretty much anything; numbers, strings, arrays, functions and even other objects.

### Properties and Methods

Let's take a look at an example object:

```javascript
var car = {
    color: "red",
    name: "Chevy",
    km: 12345678,
    owners: ["Christian", "Paola"],
    parts: {
        motor: "V8",
        wheels: 4
    }
    run: function () {
        return "GO FAST!";
    },
    start: function () {
        return "Start " + this.name + " START!";
    }
};
```

In this last object we have two strings, a number, one array, one **nested** object and two functions.

The first four items are data items and are referred as the object's **properties**.
The last two items are functions that allow the object to do something with that data, and are referred to as the object's **methods**.

 A **property** of an object can be explained as a variable that is attached to the object. Object properties are basically the same as ordinary JavaScript variables, except for the attachment to objects.

 A **method** is a property of an object that is a function. Methods are defined the way normal functions are defined, except that they have to be assigned as the property of an object.

### Using `this` inside of a method

 You may have noticed the **`this`** keyword used inside the `start` method. `this` is a special keyword, that you can use within a method to refer to the current object.

 ```javascript
var microwave = {
    time: 20,
    cook: function () {
        return this.time + " seconds pending"; // Value: "20 seconds pending"
    }
};
 ```

 The `this` keyword is an [entire subject](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this) in and of itself, but for now, when used inside of a **method**,you should think of it as a value that is bound to the object that contains the method.

### Getting Members

After all of this you may be left wondering how can I access all these properties and methods inside of an object. There are two ways we can do this, **dot notation** and **bracket notation**.

#### Dot Notation

To use dot notation we specify the name of the object, write a dot `.`, then the item we want to access - this can be the name of a simple property, an item of an array property, or a call to one of the object's methods, for example:

 ```javascript
var course = {
    name: "Programming 101",
    start: 17,
    end: 20,
    classDays: ["monday", "tuesday", "friday"],
    study: function () {
        if (this.end < 24) {
            return "Study some more!";
        }
        else {
            return "Go get some sleep";
        }
    }
};

console.log(course.name); // Result: "Programming 101"
console.log(course.classDays[1]); // Result: "tuesday"
console.log(course.study()); // Result: "Study some more!"
```

We can also use notation on nested members that also have their own members.

```javascript
var car = {
    color: "red",
    name: "Chevy",
    km: 12345678,
    owners: ["Christian", "Paola"],
    parts: {
        motor: "V8",
        wheels: 4,
        check: function () {
            return "all good!";
        }
    }
};

console.log(car.parts.motor); // Result: "V8"
console.log(car.parts.check()); // Result: "all good!"
```

#### Bracket Notation

Using bracket notation is very similar to using dot notation. We specify the **key** inside a string inside square brackets `[""]`.

 ```javascript
var course = {
    name: "Programming 101",
    start: 17,
    end: 20,
    classDays: ["monday", "tuesday", "friday"],
    study: function () {
        if (this.end < 24) {
            return "Study some more!";
        }
        else {
            return "Go get some sleep";
        }
    }
};

console.log(course["start"]); // Result: 17
console.log(course["classDays"][0]); // Result: "monday"
console.log(course["study"]()) // Result: "Study some more!"
```

This looks very similar to how you access the items in an array, and it is basically the same thing — instead of using an index number to select an item, you are using the key associated with each member's value.

### Setting Members

So far we've only looked at retrieving (or getting) object members — you can also set (update) the value of object members by simply declaring the member you want to set (using dot or bracket notation), like this:

```javascript
var person = {
    age: 16,
    name: "Gabriel"
};

person.age = 30;
person["name"] = "Daniel";
```

Setting members doesn't just stop at updating the values of existing properties and methods; you can also create completely new members.

```javascript
person["height"] = 1.75;
person.sayName = function () {
    return "Hi! My name is " + this.name;
}
```

Try reading these properties and adding others!

### Constructor Functions

There are cases in which we want to be able to generalize an object and be able to constructor many **instances** of objects based on some general methods and properties. In this case we can use special function called **constructor functions**.

Constructors provide the means to create as many objects as you need in an effective way, attaching data and functions to them as required.

When a new object is created from a constructor function, its core functionality is linked to via a reference called a **prototype chain** (We'll take a deeper dive into `prototype` later on in the course.)

Using only our knowledge of objects and functions we can create a constructor function.

```javascript
function createPerson(name) {
    var person = {};
    person.name = name;
    person.sayName = function () {
        return "Hi! My name is " + this.name;
    };
    return person;
}
```

Let's walk through this function.

    var person = {}
We are creating a local variable inside the function, which in this case is a blank object.

    person.name = name;
    person.sayName = function () {
        return "Hi! My name is " + this.name;
    }
We are adding two members to the `person` object, one property and one method. The `name` property is getting assigned the value of the `name` parameter which was passed into the `createPerson` function.

    return person;
We are returning the `person` variable at the end of the function. On every execution of the function it should return a new object (even if the same `name` parameter is passed in).

We can use this function like this:

```javascript
var person1 = createPerson("Daniela");
/*
    {
        name: "Daniela",
        sayName: function () {
            return "Hi! My name is " + this.name;
        }
    }
*/
var person2 = createPerson("Gabriel");
/*
    {
        name: "Gabriel",
        sayName: function () {
            return "Hi! My name is " + this.name;
        }
    }
*/
console.log(person1.sayName); // Result: "Hi! My name is Daniela"
console.log(person2.sayName); // Result: "Hi! My name is Gabriel"
```
