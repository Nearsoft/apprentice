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

To start writing JavaScript code in our page, you need to insert a **script** tag in you document and you are ready to write your code. Let's start with the basics, let's modify the content of our element whose id is `demo`, in this case the body:

```html
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body id="demo">

        Hey!

        <script type="text/javascript">
            document.getElementById("demo").innerHTML = "Hello World!";
        </script>
    </body>
</html>
```

You see what happen? When the page is loaded by the browser, the script is executed and takes the element with id demo using this line:

`document.getElementById("demo")`

Having the element selected we can modify the inside content with the property `innerHTML`, in our case we pass the value "Hello World!" and this is inserted into the selected element.

Be careful when using the `innerHTML`, because when you use it, you are setting the whole content of the element with the value. You can use the operator `+=` in order to add content and not to override it.










As we have mentioned before, the best way is to have our code separated, so the recommended way is to create a new file with `.js` extension and call from your html this way:

```html
<script src="js/script.js"></script>
```
