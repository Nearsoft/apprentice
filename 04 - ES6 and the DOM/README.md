# Javascript and DOM

What's the DOM? When the browser loads your website it creates the Document Object Model of your code. The DOM is the model that represents the the page as nodes and objects.

Take a look at this code:

```html
<!DOCTYPE html>
<html>
    <head>
        <title>My title</title>
    </head>
    <body>
        <a href="#">My link</a>
        <h1>My header</h1>
    </body>
</html>
```

The following tree represents the website:

![](https://www.w3schools.com/js/pic_htmltree.gif)

Javascript has the ability to add, modify and delete elements from the DOM, you can interact also with the attributes of your elements, so you can change the style of the website for example. Also you can react or catch the browser events to handle them or make your website interactive.

To start writing JavaScript code in our page, you need to insert a **script** tag in you document and you are ready to write your code. Let's start with the basics, let's modify the content of our element whose id is `app`, in this case the body:

```html
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body id="app">
        <script type="text/javascript">
            document.getElementById("app").innerHTML = "Hello World!";
        </script>
    </body>
</html>
```

When the html file is opened by the browser, the script is executed and takes the element with id app using this part of the code:

`document.getElementById("app")`

Having the element selected we can modify the inside content with the property `innerHTML`, in our case we pass the value "Hello World!" and this is inserted into the selected element.

Be careful when using the `innerHTML`, because when you use it, you are assigning the whole content of the element with the value you are passing. You can use the operator `+=` in order to add content and not to override it.

There are other existing methods to find elements in the DOM, like:

* document.getElementById(id)
* document.getElementsByTagName(tagName)
* document.getElementsByClassName(className)

The method `getElementById` is the only one that returns a single element, while other methods are returning an array of the elements that matches with the parameter we pass.

Let's say we have the following HTML code

```html
<ul>
    <li>List Item 1</li>
    <li>List Item 2</li>
    <li>List Item 3</li>
    <li>List Item 4</li>
</ul>
```

And we execute the script:

```js
var listItems = document.getElementsByTagName('li');
```

The variable **listItems** will be an HTMLCollection (a JavaScript array) with the reference of our four list items we have in our page that you can manipulate later.

Let's review the things we can change once you have the reference to the element. The DOM objects have a wide list of properties you can manipulate. Ifœ you select an element from the browser's console, you will see the list of things you can edit:

![](https://user-images.githubusercontent.com/8913918/39292546-5ab43250-48eb-11e8-88b1-43cc0dab7a0f.png)

We are going to review three:

* **element.innerHTML** Allow you to insert HTML content inside the element you have selected.
* **element.attribute** Let you change the value of the attribute from the element.
* **element.style.property** Set a value to a css style property (change the css).

```html
<html>
    <head>
    </head>
    <body id="app">

        <input type="text" id="my-input">
        <div id="box"></div>

        <script type="text/javascript">
            document.getElementById("app").innerHTML += "<h1>Hello World!</h1>";
            document.getElementById("my-input").type = "checkbox";
            document.getElementById("box").style.background = "black";
            document.getElementById("box").style.width = "100px";
            document.getElementById("box").style.height = "100px";    
        </script>
    </body>
</html>
```

As we have mentioned in past chapters, the best way is to have our code separated, so we recommend to create a new file with `.js` extension and call from your html this way:

```html
<script src="js/script.js"></script>
```

### Events

You can add listeners to your elements to execute some part of code when certain event happens. These are some of the most common events that exist:

<table>
    <tr>
        <td>onchange</td>
        <td>An HTML element has been changed</td>
    </tr>
    <tr>
        <td>onclick</td>
        <td>The user clicks an HTML element</td>
    </tr>
    <tr>
        <td>onmouseover</td>
        <td>The user moves the mouse over an HTML element</td>
    </tr>
    <tr>
        <td>onmouseout</td>
        <td>The user moves the mouse away from an HTML element</td>
    </tr>
    <tr>
        <td>onkeydown</td>
        <td>The user pushes a keyboard key</td>
    </tr>
    <tr>
        <td>onload</td>
        <td>The browser has finished loading the page</td>
    </tr>
</table>

The most basic way to add events to your elements is via attribute and in the value you put the code that you want to be executed:

```html
<button onclick="alert('hola')">Click me!</button>
```

In this case we will show an alert on the browser when we click on the button. Remember the JavaScript functions? Here's a great place to use them, just put the function name as value that you have defined on your script and this will be executed when the element suffer the event.

You can make pretty interesting things, like inserting new elements on your website when clicking a button or make them disappear, change completely the way they look like and everything you want! You have total control of your DOM using JavaScript.

```html
<!DOCTYPE html>
<html>
    <head>
        <style>
            div {
                width: 50px;
                height: 50px;
                display: inline-block;
            }
        </style>
    </head>
    <body>
        <button onclick="drawDiv()">Click me!</button>

        <script>
        var body = document.body;
        function drawDiv(){
            var div = document.createElement('div')
            div.style.background = generateColor();
            body.appendChild(div);
        }
        function generateColor(){
            return 'rgb(' + Math.floor(Math.random()*255) + ',' +
                    Math.floor(Math.random()*255) + ',' +
                    Math.floor(Math.random()*255) + ')';
        }
        </script>
    </body>
</html>
```

And combining the css transitions with JavaScript you can do pretty cool things:

```html
<!DOCTYPE html>
<html>
    <head>
        <style>
        #box {
            transition: height 1s;
            width: 500px;
            height: 500px;
            background: red;
        }
        </style>
    </head>
    <body>

        <div id="box"></div>

        <button id="show">Show</button>
        <button id="hide">Hide</button>

        <script>
        var box = document.getElementById("box");

        document.getElementById("show").addEventListener("click", function() {
            box.style.height = '500px';
        });

        document.getElementById("hide").addEventListener("click", function() {
            box.style.height = '0';
        });

        </script>
    </body>
</html>
```

Validations are done via JavaScript, this is an example using the onkeypress event, which will read the key number of the char that user has pressed and check for the key, if charKey is in range of number, will do nothing letting the user to type as normal in the text input. In the case that keyCode is out of the range of numbers, then will prevent that this character is typed

```html
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <input type="text" onkeypress="validateNumberOnly(event)">
        <script>
        function validateNumberOnly(event) {
            if ((event.keyCode < 48 || event.keyCode > 57)) {
                event.returnValue = false;
            }
        }
        </script>
    </body>
</html>
```

Imagine you have an application to display books, when you open the website you do an http request and receive a list of books in JSON (JavaScript Object Notation) format. You now know how to create elements based on that array you received.

index.html

```html
<html>
    <head>
        <link rel="stylesheet" href="style.css">
    </head>
    <body id="app">
        <script type="text/javascript" src="script.js"></script>
    </body>
</html>
```

```css
.book{
    display: inline-block;
    width: 200px;
    height: 300px;
    border: 1px solid black;
    border-radius: 3px;
    margin: 10px;
    overflow: auto;
    font-family: sans-serif;
    padding: 10px;
}

.book h3{
    text-align: center;
}

.author{
    text-align: right;
}
```

script.js

```js
var app = document.getElementById('app');

var books = [
    {
        "isbn": "9781593275846",
        "title": "Eloquent JavaScript, Second Edition",
        "subtitle": "A Modern Introduction to Programming",
        "author": "Marijn Haverbeke",
        "published": "2014-12-14T00:00:00.000Z",
        "publisher": "No Starch Press",
        "pages": 472,
        "description": "JavaScript lies at the heart of almost every modern web application, from social apps to the newest browser-based games. Though simple for beginners to pick up and play with, JavaScript is a flexible, complex language that you can use to build full-scale applications.",
        "website": "http://eloquentjavascript.net/"
    },
    {
        "isbn": "9781449331818",
        "title": "Learning JavaScript Design Patterns",
        "subtitle": "A JavaScript and jQuery Developer's Guide",
        "author": "Addy Osmani",
        "published": "2012-07-01T00:00:00.000Z",
        "publisher": "O'Reilly Media",
        "pages": 254,
        "description": "With Learning JavaScript Design Patterns, you'll learn how to write beautiful, structured, and maintainable JavaScript by applying classical and modern design patterns to the language. If you want to keep your code efficient, more manageable, and up-to-date with the latest best practices, this book is for you.",
        "website": "http://www.addyosmani.com/resources/essentialjsdesignpatterns/book/"
    }
];

books.forEach(function(element){
    app.innerHTML +=
        '<div class="book" onclick="visit(\''+element.website+'\')">' +
            '<h3>' + element.title + '</h3>' +
            '<p class="description">' + element.description + '</p>' +
            '<p class="author">' + element.author + '</p>' +
        '</div>';
});

function visit(link){
    window.open(link, '_blank');
}
```

# ES6

ES6 refers to version 6 of the ECMAScript programming language. It is a major enhancement to the JavaScript language, and adds many more features intended to make large-scale software development easier.

We'll see some of the mayor features ES6 gives up next! 

## Classes

JavaScript classes, introduced in ECMAScript 2015, are primarily syntactical sugar over JavaScript's existing prototype-based inheritance. The class syntax does not introduce a new object-oriented inheritance model to JavaScript.

Here we can see how to use a JavaScript Class:

```javascript
class User {

  constructor(name) {
    this.name = name;
  }

  sayHi() {
    alert(this.name);
  }

}

let user = new User("John");
user.sayHi();
```

The class User {...} here actually does two things:

- Declares a variable User that references the function named "constructor".
- Puts methods listed in the definition into User.prototype. Here, it includes sayHi and the constructor.

This is syntax sugar over a prototype-based class. Here's how the same class would look using a prototype-based approach.

```javascript
function User(name) {
  this.name = name;
}

User.prototype.sayHi = function() {
  alert(this.name);
}

let user = new User("John");
user.sayHi();
```

### Constructor Method

The constructor method is a special method for creating and initializing an object created within a class.

There can be only one special method with the name `constructor` in a class. Having more than one occurrence of a constructor method in a class will throw a SyntaxError error.
A constructor can use the `super` keyword to call the constructor of a parent class. If you do not specify a constructor method, a default constructor is used.

## Variable Types

### `var`

The `var` statement declares a variable, optionally initializing it to a value.

It's the most well known variable declaration statement, and the only one that existed before `let` and `const` were introduced in ES6.
Variables declared using var are always **`hoisted`** to the top of their `scope`.

When a JavaScript variable is `hoisted` it goes through a process where the variable is declared in it's top-most `function scope` before execution.
This makes it possible that statements such as the following are possible:

```javascript
console.log(i); // undefined
var i = 0;
```

Here's how the interpreter executes the code after hoisting:

```javascript
var i;
console.log(i);
i = 0;
```
The interpreter moved (e.g. “hoisted”) the variable declaration to the top of the scope.

`var`'s are `function-scoped` as we had previously mentioned: scope is limited to the function it was defined in.

```javascript
function foo() {
  var i = 0;
}
console.log(i); // ReferenceError: i is not defined
```
`i` only exists within foo so we get an error..

**var’s are not block-scoped: scope is not limited to the block it was defined in.**

```javascript
var i = 0
if (true) {
  var i = 1;
}
console.log(i); // 1
```

i was still in the “global scope” within the if block. i's value was overwritten, which may have not been the intention.

### `let`

Only difference between `var` and `let` variables is that `let` variables _are_ **block scoped**. This leads to a lot less unexpected behavior.

```javascript
let i = 0;
if (true) {
  let i = 1;
}
console.log(i); // 0
```

Even though i was assigned to 1 in the if block, that assignment was local to the block and therefore our “global” i was still 0. The if block’s scope was separate from the global scope.

### `const`
`const` variables restricts reassignment of variables.

```javascript
const i = 0;
i = 1; // TypeError: Assignment to constant variable.
```

const also doesn't allow you to declare a variable without assigning its (constant) value

`const i; // SyntaxError: Missing initializer in const declaration`

However, `const` does allow variable mutation (only objects/arrays are mutable in JS).

Array Mutation:

```javascript
const a = [1];
const b = a;
console.log(a === b); // true
b.push(2);
console.log(a === b); // true
console.log(a); /// [ 1, 2 ]
```

Object Mutation:

```javascript
const obj = {};
obj.i = 1;
console.log(obj); // { i: 1 }
```

Also like `let`, `const` is also **block scoped**.

## Promises

A Promise is an object representing the eventual completion or failure of an asynchronous operation.

![Promises Process](https://mdn.mozillademos.org/files/15911/promises.png)

A `promise` is a proxy for a value not necessarily known when the promise is created. 

It allows you to associate handlers with an asynchronous action's eventual success value or failure reason. This lets asynchronous methods return values like synchronous methods: instead of immediately returning the final value, the asynchronous method returns a promise to supply the value at some point in the future.

A Promise is in one of these states:
- `pending`: initial state, neither fulfilled nor rejected.
- `fulfilled`: meaning that the operation completed successfully.
- `rejected`: meaning that the operation failed.

Essentially, a promise is a returned object to which you attach callbacks, instead of passing callbacks into a function.

A promise comes with some guarantees:

- Callbacks will never be called before the completion of the current run of the JavaScript event loop.
- Callbacks added with `then()` even after the success or failure of the asynchronous operation, will be called, as above.
- Multiple callbacks may be added by calling `then()` several times. Each callback is executed one after another, in the order in which they were inserted.

### `.then()`

.`then` is a method of a promise which takes two arguments, a callback function if the promised is `fullfilled` and a second callback function if the promise is `rejected` (though this last case is a lot less used now and should be substituted with `.catch()`).

`.then` method returns a `Promise` in the `pending` status.

 If the `promise` resolves successfully it will pass in the promises `resolve` value to the callback passed in to the `.then` method.
 In return it will `fullfill` the promise it returned with the value of the callback as the promises `resolve` value.

This property is what allows **chaining** to be done on promises.

If there's an error and the promise is `rejected ` it throws an error, the promise returned by then gets rejected with the thrown error as its value.
If there's an callback passed on to the promises `.catch` method, it will execute that callback as it's callback value.

### `.catch()`

The `catch()` method also returns a `Promise` and deals with rejected cases only. It behaves the same as calling `Promise.prototype.then(undefined, onRejected)`.

## Arrow Functions

An arrow function expression has a shorter syntax than a function expression and does not have its own this, arguments, super, or new.target.

```js
var x = a => a + 1;
x(4) // returns 5
``` 

### `this` in arrow functions

Until arrow functions, every new function defined its own this value (based on how function was called, a new object in the case of a constructor, undefined in strict mode function calls, the base object if the function is called as an "object method", etc.).

```javascript
function Person() {
  // The Person() constructor defines `this` as an instance of itself.
  this.age = 0;

  setInterval(function growUp() {
    // In non-strict mode, the growUp() function defines `this` 
    // as the global object (because it's where growUp() is executed.), 
    // which is different from the `this`
    // defined by the Person() constructor. 
    this.age++;
  }, 1000);
}

var p = new Person();
```

An arrow function does not have its own this; the this value of the enclosing lexical context is used i.e. Arrow functions follow the normal variable lookup rules. So while searching for this  which is not present in current scope they end up finding this from its enclosing scope 

```javascript
function Person(){
  this.age = 0;

  setInterval(() => {
    this.age++; // |this| properly refers to the Person object
  }, 1000);
}

var p = new Person();
```

### Arrow functions as methods

```javascript
'use strict';

var obj = {
  i: 10,
  b: () => console.log(this.i, this),
  c: function() {
    console.log(this.i, this);
  }
}

obj.b(); // prints undefined, Window {...} (or the global object)
obj.c(); // prints 10, Object {...}
```

## Map

`Map` is a function on the Array object’s prototype which takes a single input parameter — a callback function.

What `map` does is that it will go through every element on the array it is called on and it will execute that function.
The callback is passed the element we are currently mapping over so we can make any transformations or calculations that we need. After we go through each element, map will return a new array containing the result of the mapping.

```javascript
    const numbers = [1, 4, 6, 9]  // [1, 4, 6, 9]
    const byTwo = numbers.map(x => x * 2)  // [2, 8, 12, 18]
```

The `callback` parameter of map is passed 3 main parameters:

- `CurrentValue`: The current element being processed in the array.
- `index` (Optional): The index of the current element being processed in the array.
- `array` (Optional): The array `map` was called upon.

```javascript
    ['a', 'b', 'c'].map((currentValue, index, originalArray) => {
      if (index === originalArray.length -1) return currentValue
      return currentValue + originalArray[index+1]
    }) // ['ab', 'bc', 'c']
```

The return value of `map` is NOT the original array modified, but a new array of equal length of the original with the transformed elements inside.

`map` is generally preferred to other iteration methods as it goes more neatly with the functional programming philosophy in JavaScript, though it is not always the case.
