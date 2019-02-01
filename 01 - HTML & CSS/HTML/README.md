# HTML

All the websites that you visit daily, even some apps for your smartphone or for you desktop are created with **HTML**. HTML stands for Hypertext Markup Language.

The word Markup comes from the expresion to "Mark up" some manuscript, and that annotations were added to the document in order to add some styles, like changing the font, adding color, changing size of the text, etc.

Let's be very clear that HTML it's not a programming language. It is a language but it's just a markup one. This is because HTML is not able to handle logic, you can't create reusable functions neither create variables to storage data, moreover you don't have control structures. This language allows us to give the structure of a document which will give life to our websites.

Every website in the internet is an html file or a group of files, so if you want to start creating your own, open your favorite text editor and create a file with extension `.html`. Conventionally the first page of your site should be called `index.html`.

HTML uses *tags* in order to markup text and create elements. A tag, generally has a beginning and an end, and receive the name of *Paired tags*. This is the syntax for the root tag:

```
<html></html>
```

Not all the tags have the same structure than the one above, there are other elements that don't have closing tags, just because they are not marking up any text or other elements. These elements will be inserted into the page and those tags receive the name of *Single tags*. The syntax of these are similar to this one:

```
<img>
```

A tag can also contain extra information that will complement the functionality of the tag, sometimes changing the way the element looks or it's behavior. This data receive the name of *atributte* and this is the way it looks:

```
<input type="file">
```

This is an **input** tag with a **type** attribute with **file** as value, and will produce this in our browser:

<p align="center">
<img width="250" align="center" src="https://user-images.githubusercontent.com/8913918/37851056-b3c4b52e-2e9a-11e8-8d17-3f42a671c520.png">
</p>

Not all tags accept the same attributes but there are some globals, such as `style`, `class`, `id`, etc. And not all attributes need a value, just by adding the name attribute to the tags will affect the element.

Let's open our html file and write the following:

```
<!DOCTYPE html>
    <html>
    <head>

    </head>
    <body>

    </body>
</html>
```

This is the basic structure of a website and all must have it, let's explain step by step:

The first tag you can see there is the `html` (let's hold on the DOCTYPE one, will explain it a bit further). This tag is telling to the browser that this is an html file, and is expecting a couple of tags inside: `head` and `body`.

All within the `head` tag won't be visible in the display window of the browser. The elements and tags inside will have other purpouses, such as call for external resources as CSS documents, fonts and libraries. It also can contain the path for our favicon, the title of our site, and the image that will appear when sharing a link into a social network, also can contain a description visible for search engines and other uses, but these are the main ones.

By putting the URL https://nearsoft.com as a status on my Facebook will cause this:

<p align="center">
<img width="500" align="center" src="https://user-images.githubusercontent.com/8913918/37851054-b074ea56-2e9a-11e8-9203-d2c1493a637f.png">
</p>

Now, all that's inside the `body` tag will be our "visible" part of the site.

Now let's back to the `<!DOCTYPE html>` one, this one must be on the first line of your document. This tag is telling to our web browser the type of document is about to read and to apply some standardization rules to determine what to do with the next lines. If you miss including this tag, the browser will open normally your html file and parsing it, but can cause some strange behaviors with our elements, not having some functions or not doing the right ones in the time your site is opened in a different browser.

There's an organization called [ **The World Wide Web Consortium (W3C)**](https://www.w3.org/Consortium/) who's in charge to create the standards for HTML tags that we use and the rules that web browsers must follow at the time to rendering them. Let's take as example the `h1` tag, which is the one we use to have the main heading to our site. With the help of dev tools from Google Chrome I am able to se what are the rules for that tag by default.

<p align="center">
<img width="500" align="center" src="https://user-images.githubusercontent.com/8913918/37851038-a6e2bc98-2e9a-11e8-8a0e-f545b295f095.png">
</p>

We can override these styles adding your rules, but let's wait for the CSS lesson to do that.

Now let's talk about the tags you will be using the most of the time, starting with *heading tags*.

Heading tags are used to display the headings and titles, we have 6 tags for this: `h1`, `h2`, `h3`, `h4`, `h5` and `h6`. While number is greater the size will be smaller:

```
<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6</h6>
```

Following with text tags we have the `p` tag that will define a paragraph, producing a block element, meaning that if you have two paragraph elements, then the first one will be on top of the second one.

```
<p> paragraph text </p>
```

Let's talk about links now, you can turn almost everything into a link with the `a` tag. You can do a letter, a word, a complete paragraph an hyperlink by wrapping whatever you want with this tag, even an image. You need to give the `href` attribute and the value will be the url you want to redirect.

```
<a href="www.google.com">Redirect me to google</a>
```

Inserting images into the document is done using `img` tag, you only need to pass the path where the image is located into the `src` attribute.

```
<img src="image.jpg" />
```

Now we are going to check the tags used to adding some decoration to the text, like putting text in bold, italic, with underline, etc.

`b` -> <b>Bold</b>

`i` -> <i>Italic</i>

`u` -> <u>Underline</u>

`strike` -> <strike>Strike</strike>

`sup` -> Super<sup>script</sup>

`sub` -> Sub<sub>script</sub>

`tt` -> <tt>Typewriter Text</tt>

`pre` ->

```
<pre>
    function () {
        console.log("Hello world!")
    }
</pre>
```

<pre>
    function () {
        console.log("Hello world!")
    }
</pre>
​
`blockquote` -> <blockquote> quote </blockquote>

## Divisions

Now we are going to see one of the most used tags, the `div`. This define a division of your site, that's it. Pretty easy to understand. If you start thinking about any website you should be able to start recognizing how is divided and how differents sections compose the website.

You will be wrapping elements inside a `div` tag and together will give the structure to the view. With some practice you will be able to determine whether or not to use a `div`.

## Lists

Lists are elements very used in web applications, there are two types of lists, the ordered ones `ol` and unordered lists `ul`. This tags will define a list, but you need to include some list items `li` in order to create a list.

Let's start with unordered lists:

```
<ul>
    <li>First</li>
    <li>Second</li>
</ul>
```

Will produce:

<ul>
    <li>First</li>
    <li>Second</li>
    <li>Third</li>
</ul>

And doing the same, but using the `ol` tag you will have something like this:

<ol>
    <li>First</li>
    <li>Second</li>
    <li>Third</li>
</ol>

You can change the numbers in `ol` or the bullets for the `ul` using some styles. Let's add a `style` attribute to the `ul` adding the new list style type we want, like this:

```
<ul style="list-style-type:square">
```

<ul style="list-style-type:square">
    <li>First</li>
    <li>Second</li>
    <li>Third</li>
</ul>

Now we are going to change the numbers by letters in an ordered list, using now the attribute `type`:

```
<ol type="A">
```

<ol type="A">
    <li>First</li>
    <li>Second</li>
    <li>Third</li>
</ol>

You can have a list inside a list:

<ol>
    <li>First</li>
    <li>Second</li>
    <ul>
        <li>First</li>
        <li>Second</li>
        <li>Third</li>
    </ul>
</ol>

Let's check a last type of list, the **Definition lists**:

<dl>
  <dt>Coffee</dt>
  <dd>Black hot drink</dd>
  <dt>Milk</dt>
  <dd>White cold drink</dd>
</dl>

## Tables

Tables are elements to display tabulated data only. Some years ago, web developers used this tag to give structure to their websites, which was not strictly wrong because in that time you always browsed through the internet using your PC and it was enough. Now we have tablets, smartphones and a lot of resolutions that we need to support and this is not an option anymore.

The `table` tag uses several tags inside, such as `thead`, `tbody`, `th`, `tr` and `td`. `thead` is used to create a header for the table, like adding a title for every column, inside `tbody` we will display all the data we have. `tr` stands for **table row**, which indicates a row for the table and `td` means **table data** and goes inside the `tr`.

```<table>
    <thead>
        <th>First column</th>
        <th>Second column</th>
    </thead>
    <tbody>
        <tr>
            <td>A</td>
            <td>B</td>
        </tr>
        <tr>
            <td>C</td>
            <td>D</td>
        </tr>
        <tr>
            <td>E</td>
            <td>F</td>
        </tr>
    </tbody>
</table>
```
This is the result from above code:

<table>
    <thead>
        <th>First column</th>
        <th>Second column</th>
    </thead>
    <tbody>
        <tr>
            <td>A</td>
            <td>B</td>
        </tr>
        <tr>
            <td>C</td>
            <td>D</td>
        </tr>
        <tr>
            <td>E</td>
            <td>F</td>
        </tr>
    </tbody>
</table>

If your table doesn't require a `thead` you can simply start declaring rows directly after the `table` tag, like this:

<table>
    <tr>
        <td>A</td>
        <td>B</td>
    </tr>
    <tr>
        <td>C</td>
        <td>D</td>
    </tr>
    <tr>
        <td>E</td>
        <td>F</td>
    </tr>
</table>

You can also merge columns or rows using the `colspan` and `rowspan` attributes:

```
<table>
    <tr>
        <td>A</td>
        <td>B</td>
    </tr>
    <tr>
        <td colspan="2">C</td>
    </tr>
    <tr>
        <td>D</td>
        <td>E</td>
    </tr>
</table>
```
<table>
    <tr>
        <td>A</td>
        <td>B</td>
    </tr>
    <tr>
        <td colspan="2">C</td>
    </tr>
    <tr>
        <td>D</td>
        <td>E</td>
    </tr>
</table>

```
<table>
    <tr>
        <td rowspan="2">A</td>
        <td>B</td>
    </tr>
    <tr>
        <td>C</td>
    </tr>
    <tr>
        <td>D</td>
        <td>E</td>
    </tr>
</table>
```

<table>
    <tr>
        <td rowspan="2">A</td>
        <td>B</td>
    </tr>
    <tr>
        <td>C</td>
    </tr>
    <tr>
        <td>D</td>
        <td>E</td>
    </tr>
</table>

## Forms

Forms are one of the most important elements in web applications, these are the way that users can interact with the data, by creating, updating or even deleting data from their records. In social networks that's the way you post a status, upload your photos, create an account, how you log in into the application, etc.

HTML will only create a space to write information or hold a path for a file, do selections, etc. But won't make working forms.

The main tag for this is `form` which will be wrapping every other element. We have the `input`, `textarea` and `select` tags here.

The `input` tag is very versatile, we can change the way it will pass data using the `type` attribute.

```
<input type="text">
<input type="password">
<input type="file">
<input type="checkbox">
<input type="radio">
<input type="submit">
```

We have also the `textarea` which is a similar element to `<input type="text">`.

And finally we have the `select` which will contain a `option` for every option you can select from the list:

```
<select>
    <option value="1">One</option>
    <option value="2">Two</option>
    <option value="3">Three</option>
    <option value="4">Four</option>
    <option value="5">Five</option>
</select>
```

You see that `value` attribute there? That's the real value that will be sent, the text inside the `option` tag it's only a display value for the user.

To finish with **tags** I will show you some that has no visual impact for website but are very useful:

The `link` tag will help you to import external resources to your site. This will helping us to having more control and a readable code. This usually go inside the `head` tag and goes together with a `src` attribute. The value of this attribute will be pointing to the resource we want to include it.

```
<link href="resource.path">
```

Adding comments to the HTML code is useful to explain others what you are doing or probably explaining why you choose that tag or tags instead others. To add comments you need the following syntax:

```
<!-- Comment here -->
```

And last but not least the `meta` tag. This generally will have a couple of attributes: `name` and `content`. The `meta` tag is usually used several times with different values. Here you can define keywords, description, author, etc. from your website.

This is the way you do:

```
<meta name="author" content="Nearsoft Apprentice">
<meta name="description" content="BEST WEBSITE EVER">
<meta name="keywords" content="html, tags, html, keywords, blah, blah, blah">
```

Search engines will look for these meta tags in order to show your website in their results, and also you can use meta tags for specific social networks i.e. Facebook:

```
<meta property="og:url" content="https://nearsoft.com/home-b/?utm_expid=927768-22.tHy6zLtaTvy4k26gC6OS-A.1/">
<meta property="og:title" content="Grow your Development Team">
<meta property="og:site_name" content="Nearsoft">
<meta property="og:description" content="">
<meta property="og:type" content="website">
<meta property="og:image" content="https://nearsoft.com/wp-content/themes/Velvet/_img/nearsoft-symbol.png">
<meta property="og:locale" content="en_us">
```

Twitter uses it's own too:

```
<meta property="twitter:account_id" content="10445872">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="@nearsoft">
<meta name="twitter:title" content="Grow your Development Team">
<meta name="twitter:description" content="…">
<meta name="twitter:image" content="">
```

As summary you must know now that **HTML is the skeleton for our website**, and will help you to display the information you want in several ways, inserting graphics, tables, lists, paragraphs, etc. you can also define the layouts inside your html file using divisions.

There are a lot of tag we didn't see throughout this chapter, such as the `style` tag you can use to write your style rules in your site, also `script` which let you include JavaScript code in your website, `video` to insert a video to your site, etc. but you now know the basis and you can move forward to play with them, try new ones, improve with the ones we just saw and start building your websites!
