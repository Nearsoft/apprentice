# Bootstrap

[Bootstrap](https://getbootstrap.com/) is one of many frameworks you can use to build your applications. Using one of this frameworks will allow you to be more effective when you are creating a website. On this part of the course we will focus on the part of doing layouts, which is one of the most complex things to do at first when you are learning to develop websites.

Bootstrap is currently in the version 4.1.0 and this is the version we will be using. The first thing you need to know of this framework is that you can see this as a couple of files: a css and a js file, where there are already written a lot of css rules you can use with the usage of classes and also there are some components already created, ready to be used and interact with them with minimal or sometimes none code.

As we mention before, we will go over the layout part, which means that we only going to need the css file. To start using bootstrap let's import the css file into our html file. We don't need to download the file, we are going to use a CDN (Content Delivery Network) and just put the link to that file in our code:

```html
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
    </head>
    <body>

    </body>
</html>
```

And we are ready to begin with this! The first thing you need is a design of the user interface or a clear idea of what you want to create. In our case we will do again our twitter layout using bootstrap and one of the advantages is that your page will be almost full responsive using the classes of the framework.

With bootstrap we have some breakpoints, which means that we can define rules for 5 different window sizes, remember this table because you will need in the future:

<table>
    <tr>
        <td><576px</td>
        <td>Extra small</td>
    </tr>
    <tr>
        <td>≥576px</td>
        <td>Small</td>
    </tr>
    <tr>
        <td>≥768px</td>
        <td>Medium</td>
    </tr>
    <tr>
        <td>≥992px</td>
        <td>Large</td>
    </tr>
    <tr>
        <td>≥1200px</td>
        <td>Extra large</td>
    </tr>
</table>






The main element need to know is the `container`. This is the most basic and the main to start our layout using the grid system. There are a couple of containers: the normal container and the container-fluid. The normal container will wrap you elements with margins on both sides, while the container-fluid covers the entire window.

![](http://www.codescratcher.com/wp-content/uploads/2015/03/Fixed-and-Fluid-Layout-in-Bootstrap-Output.gif)

You shouldn't use a container inside other container!

The following element we have is the `row`, which represents a row in our layout, like tables! Remember? it's the same, and do you remember what do we have inside the rows in the tables? columns! here it's the same. Let's say I want a couple of rows, one with two columns and a second row with three columns, this is the code to do that:

```html
<div class="container">
    <div class="row">
        <div class="col"></div>
        <div class="col"></div>
    </div>
    <div class="row">
        <div class="col"></div>
        <div class="col"></div>
        <div class="col"></div>
    </div>
</div>
```

This assures me that I will have always 2 and 3 columns in all devices. But what if I want to show every column in their own row when you open this on mobile? Here you need to be more specific and be explicit on how you want to display every column on every device width.

Do you remember the table above with the breakpoints? Well, for specify rules per every device you need to add some suffix to the columns classes:

Extra small: -xs
Small: -sm
Medium: -md
Large: -lg
Extra large: -xl

And the grid system is based on a twelve columns layout, so you need to specify how wide will the column be using that numbers. In our case, as we want to display one column per row when is on extra small devices and out of that we will display as two columns in the same row we need to add the classes `col-xs-12` and `col-sm-6` to the column. And for the second row, we want to display one column per row when it's xs and three column per row out of that wide, then we add the classes: `col-xs-12` and `col-sm-4` to every column in the second row.

```html
<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-6"></div>
        <div class="col-xs-12 col-sm-6"></div>
    </div>
    <div class="row">
        <div class="col-xs-12 col-sm-4"></div>
        <div class="col-xs-12 col-sm-4"></div>
        <div class="col-xs-12 col-sm-4"></div>
    </div>
</div>
```

![](http://www.antetype.com/blog/wp-content/uploads/2013/04/layout-12-grid-wide.png)

# Javascript and DOM

In the previous chapter you learned the basics of JavaScript and you probably were thinking while you were reading: Why JavaScript instead other programming languages? Well the reason is that JavaScript is the only language that runs on the browser and that means you can interact with the DOM using it.

What's the DOM? When the browser loads your website, this create the Document Object Model of your code. The DOM is the model that represents the the page as nodes and objects.

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

With JavaScript you can add new elements and modify the ones that exist, you can add, change or remove attributes from your elements, so you can change the css of the website and also react to the browser events.

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

You see what happen? When the page is loaded by the browser, the script is executed and takes the element with id app using this line:

`document.getElementById("app")`

Having the element selected we can modify the inside content with the property `innerHTML`, in our case we pass the value "Hello World!" and this is inserted into the selected element.

Be careful when using the `innerHTML`, because when you use it, you are setting the whole content of the element with the value. You can use the operator `+=` in order to add content and not to override it.

Exist also more methods to find elements in the DOM, like:

* document.getElementById(id)
* document.getElementsByTagName(tagName)
* document.getElementsByClassName(className)

You can see that getElementById is the only method that returns a single element, while other methods are returning an array of the elements that matches with the parameter we pass.

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
