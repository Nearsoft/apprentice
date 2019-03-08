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
