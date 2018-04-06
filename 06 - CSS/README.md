# CSS

Now that you know HTML and describe the structure of your document, it's time to add some style to your elements! CSS stands for Cascading Style Sheets, and this will describe how your HTML elements will be displayed on the browser.

To get started with CSS we need to know what a selector is and we are going to define what it is first of all. A selector is basically a way to *select* one or more html tags defined on your document. That's all you need to know up to now, of course there are way more to discover with selectors, but that's enough to start writing our first CSS rules.

The basic syntax for CSS is pretty simple:

```
selector {
    property: value;
    property-two: value;
}
```

For example the following CSS code is telling to the browser to put in black the background of the body element:

```
body {
    background: black;
}
```

There are several ways to add styles to your elements. The first is adding the `style` attribute to the tag and specifying one or more rules as value.

```
<body style="background:black; color:white;"></body>
```

It's not recommended to add your styles this way because usually you need a lot of CSS code for a simple website and having your HTML and CSS code in the same document will make it harder to understand. It's better to separate the CSS from your HTML.

There's another way to have your styles in the same HTML file: using the `style` tag. This tag will let you write CSS in a special block for between your HTML tags. A common place to put this tag is inside the `head` of your document, but this can be added in any place of your document and can be used more than one time.

```
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <style>
            body{
                background: black;
                color: white;
            }
        </style>
    </head>
    <body>

    </body>
</html>
```

Although this method separates our code in a single or multiple blocks of CSS code, it's still better to have only HTML on your document and create a single or multiple CSS files.

Finally the last and recommended method to include your CSS is creating a file with `.css` extension and call it from your HTML using the `link` tag. The correct place to put this tag is inside the `head`, like this:

index.html

```
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>

    </body>
</html>
```

style.css

```
body {
    background: black;
    color: white;
}
```

The three examples above are doing the exact same thing.

Now that you know how to write CSS and how to include into your HTML document, let's continue with some of the most important styles you need to know:
