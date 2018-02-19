# Basic Concepts

> This document is based of the following presentation by Cristian Cota: [http://slides.com/cristiancota/basic-concepts](http://slides.com/cristiancota/basic-concepts)


The world of web development orbits around a galaxy of interconnected concepts, techniques, and technologies which are constantly evolving. This can sometimes hinder the ability of newcomers to learn and practice the craft effectively.


To help build a solid foundation for learning web development, we're going to go over some of the most basic concepts. The objective of this chapter is to present a broad picture of the kind of things involved in the development of web applications. In the hopes that the following chapters don't carry too much cognitive weight.


Remember that programming is not about memorization. Where in doubt, you can always refer to this chapter to refresh your memory and review the concepts.

## Locating Sites in the Web

> The fundamental concepts from this section are URL, Domain, IP address, and DNS

The internet is an ever growing web of machines connected between each other. Similar to how houses are connected in a city, and cities are connected to each other, if you don't know which direction to take, you're going to get lost.

The most usual and high level way to locate a website is by it's **URL**, this term stands for *Uniform Resource Locator* and it's an encoded string which let's us identify a location in a computer network and the means of retrieving a resource on that machine.
Let's take a look at the programming subreddit URL to identify its basic parts: [https://www.reddit.com/r/programming/](https://www.reddit.com/r/programming/).

First we have the *scheme* `https` which denotes the protocol used for communication. Then we have the *hostname* `www.reddit.com` which is basically the domain to which the URL is referring to. And lastly we have a *path* to the `/r/programming/` resource, which identifies that of all the content in that website, we want to get the programming subreddit feed.

As it's very common with technical definitions, there's more details and complexity in the precise [definition of URL](https://tools.ietf.org/html/rfc3986), but the simplified definition from above can help us untangle other concepts, in particular regarding the hostname.

It turns out that `reddit.com` is not the direct location of the machine where the site is hosted. Similar to how house addresses are not the latitude and longitude coordinates, but a more easily to remember combination of names. Websites locations are directly identified by an *IP address*.

The structure of IP addresses differs from version to version, the most widely use version is IPv4 which reads as a four numbers from 0 to 255 separated by dots like:

- 127.0.0.1 (localhost)
- 208.80.153.224 (Wikipedia)
- 172.217.2.238 (Google)

Go ahead and enter [http://172.217.2.238](http://172.217.2.238) into your browser's address bar. You'll see google popping up. But how do we know `www.google.com` refers to this address?

Well, the Google domain is registered in a **DNS** (which stands for *Domain Name System*). These DNS are like tables that translate memorizable names to the numerical IP addresses needed for locating a machine.

## The Languages of the Digital Hyperspace

> The fundamental concepts from this section are HTTP, HTTPS, POP, IMAP, SMTP, FTP, and SSH


## The Ends of a Web Application

> The fundamental concepts from this section are front-end, back-end, and frameworks


## Behind the Website

> The fundamental concepts from this section are API, Web Server, Cookies, and Database


## The Website in the Eye of the Beholder

> The fundamental concepts from this section are HTML, CSS, JavaScript, AJAX, Responsive Design, Grid System, RGB/Hex, SEO


## The Tools of the Craft

> The fundamental concepts from this section are WYSIWYG, GUI, Developer tools, Code, Version Control, Git, Open Source

# Topics

## URL (Uniform Resource Locator)

> It's the address of the webpage that you're trying to get.

A Uniform Resource Locator (commonly known as a web address), is a reference to a web resource that specifies its location on a computer network and a mechanism for retrieving it.


## Domain

> The part of the URL which specifies the location of the web server who is going to respond to your request.

A domain name is an identification string that defines a realm of administrative autonomy, authority or control within the Internet.

Domain names serve to identify Internet resources, such as computers, networks, and services, with a text-based label that is easier to memorize than the numerical addresses used in the Internet protocols.

## IP Address

> The IP Address is the actual definitive address of a computer or server on the web.

An Internet Protocol address is a numerical label assigned to each device connected to a computer network that uses the Internet Protocol for communication.

## DNS (Domain Name System)

> Maps the human-readable domains to their actual IP address locations

The Domain Name System is a hierarchical decentralized naming system for computers, services, or other resources connected to the Internet or a private network. It associates various information with domain names assigned to each of the participating entities.

It translates more readily memorized domain names to the numerical IP addresses needed for locating and identifying computer services and devices with the underlying network protocols.

## HTTP (Hypertext Transfer Protocol)

> Protocol used across the web for just about all communication between clients and servers.

The Hypertext Transfer Protocol is an application protocol for distributed, collaborative, and hypermedia information systems. HTTP is the foundation of data communication for the World Wide Web.

### HTTP Verbs

> - Post
> - Get
> - Put
> - Delete

HTTP defines methods (sometimes referred to as verbs) to indicate the desired action to be performed on the identified resource.

#### GET

The GET method requests a representation of the specified resource. Requests using GET should only retrieve data and should have no other effect.

#### POST

The POST method requests that the server accept the entity enclosed in the request as a new subordinate of the web resource identified by the URI.

#### PUT

The PUT method requests that the enclosed entity be stored under the supplied URI.

#### DELETE

The DELETE method deletes the specified resource.

## HTTPS

HTTP Secure is an adaptation of the HTTP for secure communication over a computer network, and is widely used on the Internet.

## POP, IMAP & SMTP

The Post Office Protocol (POP) is an application-layer Internet standard protocol used by local e-mail clients to retrieve e-mail from a remote server over a TCP/IP connection.

he Internet Message Access Protocol (IMAP) is an Internet standard protocol used by e-mail clients to retrieve e-mail messages from a mail server over a TCP/IP connection.

Simple Mail Transfer Protocol (SMTP) is an Internet standard for electronic mail (email) transmission.

## FTP & SSH

The File Transfer Protocol (FTP) is a standard network protocol used for the transfer of computer files between a client and server on a computer network.

Secure Shell (SSH) is a cryptographic network protocol for operating network services securely over an unsecured network. The best known example application is for remote login to computer systems by users.


## API (Application Programming Interface)

> Is an exposed part of a web application which lets other applications talk to it.

An application programming interface (API) is a set of subroutine definitions, protocols, and tools for building application software.

Is a programmatic interface consisting of one or more publicly exposed endpoints to a defined request–response message system, typically expressed in JSON or XML, which is exposed via the web

## Web Server

> The web server is the part of your web application which actively receives and responds to incoming HTTP requests from browsers or other applications.

A web server is a computer system that processes requests via HTTP.

## Cookies

> Little snippets of text that the web application can drop into your browser's memory when it sends back the web page.

An HTTP cookie (also called web cookie, Internet cookie, browser cookie, or simply cookie) is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing.

## SEO (Search Engine Optimization)

> Is making sure your website is very easy for Google and others to crawl so your customers can find their way there.

Search engine optimization (SEO) is the process of affecting the online visibility of a website or a web page in a web search engine's unpaid results—often referred to as "natural", "organic", or "earned" results.

## DESIGN

## WYSIWYG (What You See Is What You Get)

> It means that however you drag and drop items in the editor, they will show up exactly that way in the "real" world version of the thing you're building.

A WYSIWYG editor is a system in which content (text and graphics) can be edited in a form closely resembling its appearance when printed or displayed as a finished product,[2] such as a printed document, web page, or slide presentation.

## Responsive Design

> Making your website display well regardless of what size screen or type of device it is viewed on. It "responds" to the browser's specifications.

Responsive web design (RWD) is an approach to web design which makes web pages render well on a variety of devices and window or screen sizes.

## Grid System

## RGB, Hex

## GUI (Graphical User Interface)

> Is a generic term for a visual interface where the user can interact with it.

## Developer tools & Code

## Front End & Back End

## HTML (Hyper Text Markup Language)

> The markup language which specifies the structure of all the pieces of a webpage.

## CSS (Cascading Style Sheets)

> Find HTML tags and tell the browser how to display them.

## JavaScript

> The scripting language used by all browsers.

## AJAX (Asynchronous JavaScript And XML)

> A way of transferring data between the server and web page which doesn't require the user to refresh the page.

## Frameworks

> A generic term for a bunch of code or markup which makes your life easier by writing all the commonly used things for you.

## Version Control

> It's like "save" for your code combined with a time machine so you can go back and see exactly who saved what changes when.

## Git

## Open Source

> Exposing your code to the world so they can use it and help make it better.

> Specifically, you allow other people to do whatever they want with it.

## CMS (Content Management Systems)

## Database

> This is where everything your users do is saved.
