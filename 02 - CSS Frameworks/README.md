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

<table>
    <tr>
        <td><576px</td>
        <td>Extra small</td>
        <td>-xs</td>
    </tr>
    <tr>
        <td>≥576px</td>
        <td>Small</td>
        <td>-sm</td>
    </tr>
    <tr>
        <td>≥768px</td>
        <td>Medium</td>
        <td>-md</td>
    </tr>
    <tr>
        <td>≥992px</td>
        <td>Large</td>
        <td>-lg</td>
    </tr>
    <tr>
        <td>≥1200px</td>
        <td>Extra large</td>
        <td>-xl</td>
    </tr>
</table>

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