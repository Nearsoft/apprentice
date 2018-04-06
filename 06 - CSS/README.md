# CSS

Now that you know HTML and describe the structure of your document, it's time to add some style to your elements! CSS stands for Cascading Style Sheets, and this will describe how your HTML elements will be displayed on the browser.

To get started with CSS we need to know what a selector is and we are going to define what it is first of all. A selector is basically a way to *select* one or more html tags defined on your document. That's all you need to know up to now, of course there are way more to discover with selectors, but that's enough to start writing our first CSS rules.

The basic syntax for CSS is pretty simple:

```css
selector {
    property: value;
    property-two: value;
}
```

For example the following CSS code is telling to the browser to put in black the background of the body element:

```css
body {
    background: black;
}
```

There are several ways to add styles to your elements. The first is adding the `style` attribute to the tag and specifying one or more rules as value.

```html
<body style="background:black; color:white;"></body>
```

It's not recommended to add your styles this way because usually you need a lot of CSS code for a simple website and having your HTML and CSS code in the same document will make it harder to understand. It's better to separate the CSS from your HTML.

There's another way to have your styles in the same HTML file: using the `style` tag. This tag will let you write CSS in a special block for between your HTML tags. A common place to put this tag is inside the `head` of your document, but this can be added in any place of your document and can be used more than one time.

```html
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

```html
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

```css
body {
    background: black;
    color: white;
}
```

The three examples above are doing the exact same thing.

Now that you know how to write CSS and how to include into your HTML document, let's continue with some of the most important styles you need to know:

### Display

This property is one of the most important to understand because this describe the way the element and the elements around are going to be behave in your website. You have several options to choose on this one: block, inline, flex, table, list-item, table, grid, none, etc.

Let's focus on the main two possibles values we have: *inline* and *block*. Elements such as button, input, select, textarea, a, img, b and i are displayed as inline elements by default. And p, h1, h2, h3, h4, h5, h6, ol, ul, div and form are elements displayed as block.

![https://i.pinimg.com/originals/9f/cc/f3/9fccf3e0600ac806e52d73cce33c3d06.png](https://i.pinimg.com/originals/9f/cc/f3/9fccf3e0600ac806e52d73cce33c3d06.png)

You can intuit that `li` elements have *list-item* as display value or `tr` have *table-row* value and so on. But there is a new display value: *flex* that became pretty popular in the last years. This is a pretty nice method to create great websites without a lot of code and it allows you to handle elements inside a flex container in a particular way.

If you want to learn more about it, you can learn by playing the game Flexbox Froggy: https://flexboxfroggy.com/

## Selectors

Selectors let you select the element or elements you want to apply the style. They can be the tag name as examples above. When you use the tag selector your are going to select all the elements that exists in the document.

The best way to add styles to an element is including a class name to the tag and then using that name in the CSS file, for example:

```html
<div class="container">
    ...
</div>
```

```css
.container {
    width: 100%;
}
```

This way you are being specific enough to add style to the element without affecting all divs that could exist in the document.

And there is a similar way to add styles to the elements, but with the `id` attribute, and instead using the dot before the class name we are going to use the hash (#) symbol along with the id of the element. This is not recommended to use with CSS because there shouldn't be repeated id's on the same page, and the best practice is to have generic CSS rules and using the id goes against this.

Also you can select elements by attributes. For example, the way to select all the elements with the id attribute is: `[id]`. We can narrow this selector to only divs with id attribute using: `div[id]`, and we can be more specific, for example to select all inputs with type text, the selector will be: `input[type=text]`.

There are a lot more selectors you can find in the following table: https://www.w3schools.com/cssref/css_selectors.asp

Selectors are used by JavaScript too, so it's important for you to know them pretty well.

## Specificity

Imagine you have this HTML and CSS code.

index.html
```html
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="box" style="background:red;" id="the-box">
            ...
        </div>
    </body>
</html>
```

style.css
```css
#the-box{
    background-color: pink;
}

.box {
    background-color: blue;
}

div {
    background-color: green;
}
```

Which background color will the div have?

> ! <- still a spoiler
