# Javascript and DOM

In the previous chapter you learned the basics of JavaScript and you probably were thinking while you were reading: Why JavaScript? Well the reason is that this is the only language that runs on the browser and that means you can interact with the DOM using JavaScript.

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



```html
<html>
    <head>
        <style>
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
        </style>
    </head>
    <body id="app">
        <script type="text/javascript" src="hola.js"></script>
    </body>
</html>
```

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
