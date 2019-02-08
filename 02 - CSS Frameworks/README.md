# CSS Frameworks

Let's start defining what's a _Framework_?

Definition by [Technopedia](https://www.techopedia.com/definition/14384/software-framework):

> A software framework is a concrete or conceptual platform where common code with generic functionality can be selectively specialized or overridden by developers or users.

Using a framework is a very recommended option to create almost any software application. We have a bunch of options for a lot of languages. In specific, a CSS framework is a collection of style rules written (usually comes with some JavaScript code) ready to be imported into the HTML and start styling your website. In this case we are going to show you some options you have to build your website:

* [Bootstrap](https://getbootstrap.com/)
* [Foundation](https://foundation.zurb.com/)
* [Bulma](https://bulma.io/)
* [Tailwind CSS](https://tailwindcss.com/docs/what-is-tailwind/)
* [Semantic UI](https://semantic-ui.com/)

Any of these frameworks above can make you more effective on creating a website. We are going to teach you how to layout your website using Bootstrap. You are going to be able to understand how a CSS framework is imported and how to use it.

Layouting your website could be one of the most complex task to understand and do at first when you are learning to create websites.

## Bootstrap

Let's talk about Bootstrap! This framework is currently in the version 4. You can see this framework as a couple of files: one CSS and the other is a JavaScript file, where there are lot of css rules already written and you can use with the usage of classes. Also there are some components already created, ready to be used and interact with them with minimal or sometimes none code.

As we mention before, we will go over the layout part, which means that we only going to need the css file. To start using bootstrap let's import the css file into our html file. We don't need to download the file, we are going to use a CDN (Content Delivery Network) by adding the reference to the resource into our html:

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