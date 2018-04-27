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

You can add listeners to your elements to execute some part of code when certain event happens.

```html
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
```
