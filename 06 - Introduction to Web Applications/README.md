So far we've seen HTML, CSS, and Javascript, which are the essentials for creating websites. If you want to build static websites or doing layouts only, this could be enough, but this is not our case. We are gonna see how to build real web applications in the following sessions, starting with this.

In order to start doing web applications, as we do every day with our clients, we must comprehend somethings before writing some code. Let's explain first the client-server architecture:

The **client-server** architecture is a communication network where clients make *Requests* to a server, who is in charge to give a *Response*.

<p align="center">
<img align="center" alt="client-server" src="https://user-images.githubusercontent.com/8913918/36585832-ac331950-183c-11e8-89f4-63e65065a699.png">
</p>

Let's define a couple of concepts very important: `request` and `response`.

A request is how the client demand for what he needs, i.e. when you try to open a website. At the moment you type the URL in the web browser, this will make a request to the server asking for the website you want to visit.

Now, the response is how the server will answer for what the client just asked. Continuing with the previous example, the server will recognize that client is asking for the website, the server knows that needs to answer with the appropriate HTML for the given URL. 

All web applications have two main layers we need to understand: front-end and back-end. The front-end part is the client, and back-end is the server.

The communication between client and server is done via HTTP. The Hyper Text Transfer Protocol (HTTP) is an application protocol used for information transfer between systems. HTTP is the basis for internet data communication (World Wide Web).

Usually HTTP has three main characteristics inside the call (the request to the server).

1. The Url

2. A communication method

3. Extra data in case needed

When the server responds, the protocol dictate a needed field and other optional.

1. Header (Need)

2. Body (Optional)

First part, the header brings information such as the response code, date, content-type and other data you can check here (https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers#Authentication). The second part, the body contains data to be received by the client, such as HTML, Json, XML, etc. Some response doesn't have a body.

Let's take again the example of navigating to a website to implement everything you've learned so far. When you type `https://www.example.com` you are making a request to the server via web browser (client) using the GET Method (don't worry about this GET Method right now, we have a special section to explain you this).

This is the client request:

```

GET /index.html HTTP/1.1

Host: www.example.com

```

And this will be the request of the server:

```

HTTP/1.1 200 OK

Date: Mon, 23 May 2005 22:38:34 GMT

Content-Type: text/html; charset=UTF-8

Content-Encoding: UTF-8

Content-Length: 138

Last-Modified: Wed, 08 Jan 2003 23:11:55 GMT

Server: Apache/1.3.3.7 (Unix) (Red-Hat/Linux)

ETag: “3f80f-1b6-3e1cb03b”

Accept-Ranges: bytes

Connection: close

<html>

<head>

<title>An Example Page</title>

</head>

<body>

Hello World, this is a very simple HTML document.

</body>

</html>

```

The blank line right before the HTML starts is the division between header and body. And this is basically how a request and a response works in real life.

Open your terminal and type `curl -i https://www.example.com/`.

All HTTP requests contain a verb, that explains to us what is needed in the request, and how the response will be. In the following list we can see all the verbs in HTTP:

* GET

* HEAD

* POST

* PUT

* DELETE

* CONNECT

* OPTIONS

* TRACE

* PATCH

But let's ignore some of them and focus on the most-used ones, which are: GET, POST, PUT and DELETE.

GET method is used to read or retrieve a resource from the server. Usually, when the request is resolved properly, this returns a 200 response (OK). Otherwise, will return a 404 response (NOT FOUND) or 400 (BAD REQUEST).

This one is the most used across the HTTP methods. When you type a URL in the location bar you're doing a GET request, and if the server responses successfully, the HTML code will be rendered on your web browser. Another example are mobile applications. When you open Instagram, for example, the application makes a request to the server to bring photos from the people you follow. The server responds with a JSON (JavaScript Object Notation) file with the latest news on your feed, including usernames, dates, comments, image's URL, etc. all the necessary elements to be handled by the app and be shown in the screen.

****Note ⚠️****: When doing a `GET`, by standard you shouldn't be doing modifications.

Now let's talk about the `POST` method. This method is used to create new resources. This means, if we're making a `POST` request using this method must because we have the intention of creating something new inside our application or the application we're using at the moment, it could be a user, a comment, tweet, etc.

When you make a request of this type, it comes with a 'body', that has all the information needed to generate a new resource. For example, sending a new tweet, this will carry within the body the message we want to share, an ID of the user to create this new tweet and know who is the user sending it, so it can appear in the feed of my followers.

The `PUT` verb is used to update the data that is already stored, is similar to POST, but instead of creating new resources, they will be modified. Like the POST method, it will contain a body where the new information we want to update.

Finally the `DELETE` method, which it's quite understandable by the name. Doing a request with this method asks the server to delete the resource we are asking. In the body, we only include the ID we want to delete.

# Modern Tooling

## Node.js

Node.js is a server-side JavaScript runtime built on Google Chrome's JavaScript Engine (V8 Engine).
Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient.

![Java Runtime vs Node.js Runtime](https://cdn-images-1.medium.com/max/800/1*sYPllpcAZLHmpuQSRPuO0Q.png)

## npm

npm is a package manager for the JavaScript programming language. 
It is the default package manager for the JavaScript runtime environment Node.js. 

### Components

npm consists of three distinct components:

- the website
- the Command Line Interface (CLI)
- the registry

Use the website to discover packages, set up profiles, and manage other aspects of your npm experience. For example, you can set up Orgs (organizations) to manage access to public or private packages.

The CLI runs from a terminal. This is how most developers interact with npm.

The registry is a large public database of JavaScript software and the meta-information surrounding it.

### Installing Packages

npm can install packages in local or global mode. 

In local mode it installs the package in a node_modules folder in your parent working directory. This location is owned by the current user. 

Global packages are installed in {prefix}/lib/node_modules/ which is owned by root (where {prefix} is usually /usr/ or /usr/local)

Packages are installed with the general structure of:

```
    npm install package
```

Installing a package this way installs the package to the local `node_modules` folder.
Installing a package this way does not persist information that this package was installed anywhere.
To install a package globally we append the `--global` flag to the end of the command.

### package.json

A package.json file:

- lists the packages that your project depends on.
- allows you to specify the versions of a package that your project can use using semantic versioning rules.
- makes your build reproducible, and therefore much easier to share with other developers.

When you install packages locally, you normally do so using a `package.json` file.
This file holds various metadata relevant to the project besides the npm packages that are installed.

It can also contain other metadata such as a project description, the version of the project in a particular distribution, license information, even configuration data - all of which can be vital to both npm and to the end users of the package. 
The package.json file is normally located at the root directory of a Node.js project.

To add a package dependency to your `package.json` you can manually edit the file and add the dependency or run `npm install` with the `--save` or `--save-dev` flags.

The `--save` flag adds the package to the `dependencies` property, while the `--save-dev` flag adds it to the `devDependencies` property.

Dev dependencies, as the name implies, are dependencies that are only required for building/developing using your package and are not explicitly necessary to run the package.

### Reinstalling Dependencies

To reinstall dependencies in a folder that contains a `package.json` file you run the `npm install` command.
This reads the `package.json` files and installs all declared dependencies.

### Uninstalling Packages

To uninstall the package you run the `npm uninstall` command, though this will only remove the package from your local `node_modules` folder without modifying your `package.json` file.

To uninstall and reflect this change in your `package.json` file add the `--save` flag or `--save-dev` if the package is a Dev Dependency.

To uninstall a global package add the `-g` or `--global` flag to the end of the command.

### Alternatives (Yarn)

Yarn is an alternate package manager for Node. 
Yarn isn’t technically a replacement for npm since it relies on modules from the npm registry. 
Think of Yarn as a new installer that still relies upon the same npm structure.

Yarn claims to have better module resolution and to provide more consistent installations across different systems. It also has local cache por package registration between projects.
Many of it's advantages are disputed and some have been ported over to npm, so most of the time it comes down to personal preferences. 

## Module Building

Having looked at modules know, we ask how we can implement this in the browser. Although there is now [general support for ECMAScript Modules](https://caniuse.com/#feat=es6-module),
there are still common cases where it's not enough such as using third party libraries, transpiling, asset management, minification, uglification and many others.

To account for this shortcomings we can use module bundlers to generate a _bundle_ from our JavaScript modules.
A JavaScript bundler is a tool that puts your code and all its dependencies together in one JavaScript file.
The most popular ones at the moment of writing this are [Webpack](https://webpack.js.org/) and recently [Parcel](https://parceljs.org/).

In this guide we'll talk about the most popular option at the moment, Webpack.

### Webpack

At its core, webpack is a static module bundler for modern JavaScript applications. 
When webpack processes your application, it internally builds a dependency graph which maps every module your project needs and generates one or more bundles.

## Transpiling

Transpilers, or source-to-source compilers, are tools that read source code written in one programming language, and produce the equivalent code in another language. Languages you write that transpile to JavaScript are often called compile-to-JS languages, and are said to target JavaScript.

Anyone who's had to deal with browser compatibility issues before knows its not as simple as writing JavaScript that runs everywhere. That's because every browser uses a different JavaScript engine: Chrome runs V8, Firefox runs SpiderMonkey, and Interet Explorer, Chakra. Each has different performance characteristics, each implements a different subset of ES2015 features, and each is approaching full compliance with the spec at different rates.

Transpilers allow us to:

- Write compile-to-JavaScript languages, like CoffeeScript, TypeScript, or ClojureScript
- Let us use new and potential JavaScript features, reliably
- Contribute to the development of the ECMAScript specification

### Babel
[Babel](https://babeljs.io) is a toolchain that is mainly used to convert ECMAScript 2015+ code into a backwards compatible version of JavaScript in current and older browsers or environments.
Here are the main things Babel can do for you:

- Transform syntax
- Polyfill features that are missing in your target environment (through @babel/polyfill)
- Source code transformations (codemods)

Babel can be made a part of the module building step in a module bundler such as Webpack to transpile your projects modules.
