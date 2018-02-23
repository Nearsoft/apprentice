## How Internet Works

Have you ever wonder how the internet works? In our daily tasks we are used to communicate, shopping, read news and do many of our daily activities are through the different devices connected to the internet. Well, here we are going to help you understand how this is possible, but in order to achieve this we need is necessary to understand some concepts before.

In this module, we are going through the following concepts:

* Protocol
* Client - server
* HTTP
    - Verbs
    - Status codes
* Internet

## Protocol

First, you need to know what's a protocol. This is can be defined as: a set of rules that dictate an act.

You can think of it as a standard algorithm. For example, to enroll in the school there are a number of standard steps you must follow to accomplish this out.

```
e.g.  

1. You take the necessary papers to the school.
2. School give you a bill to pay with the date of the exam.
3. You pay the bill in the bank.
4. You do the exam.
5. Candidates are qualified and results are published.
7. Candidates who passed pay the inscription.
8. List shift if necessary.
9. Second round for candidates.
10. New accepted candidates pay the bill.
11. Classes begin.
```

Regarding communications, there are a series of protocols that must be followed to connect devices using different technologies as bluetooth, wifi, infrared, etc. Think for a moment that each device use its own way to communicate. We will have millions of signal converters from one device to other, which means the communication will be pretty slow, including high demand as streaming, gaming, downloads, etc. Having this standards defined and used in all devices, you don't have to worry about how to connect to another device, but only to adjust to work with the protocols already established.

## Client - Server

The client-server architecture is a communication network where clients make *Requests* to a server, who is in charge to gave a *Response*.

<p align="center">
<img align="center" alt="client-server" src="https://user-images.githubusercontent.com/8913918/36585832-ac331950-183c-11e8-89f4-63e65065a699.png">
</p>

Let's define a couple of concepts very important: request and response.

A request is basically the way that the client demand for what he needs, i.e. when you try to open a website. At the moment you type the url in the web browser, this will make a request to the server asking for the website you want to visit.

Now, the response is the way that the server will answer for what the client have asked. Continuing with the previous example, the server will recognize that client is asking for the website, the server knows that needs to answer with the appropriate HTML for the url given. A bit forward we will explain this in detail.

Let's think that the client is who needs something and asks for it and the server will provide with the resources needed.

Any computer can work as server, in fact during this course you will make yours become one! which will receive the request we mention and will respond to them.

## HTTP

First let's define what is Hyper Text.

Hyper text is simple information that takes advantage of the computers to display data in a no sequential order. This means, that data is linked to more data, not located in the same place. An example of hypertext is a website.

The Hyper Text Transfer Protocol is an application protocol used for the hypertext transfer between systems. HTTP is the basis for internet data communication (World wide web).

The client-server architecture is used by HTTP. Usually HTTP has three main characteristics inside the call (the request to the server).

1. The Url
2. A communication method
3. Extra data in case needed

When the server respond, the protocol dictate a needed field and other optional.

1. Header (Need)
2. Body (Optional)

First part, the header brings information such as the response code, date, content-type and other data you can check here (https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers#Authentication). And the second part, the body contains data to be received by the client, such as HTML, Json, XML, etc. Sometimes the response doesn't have a body, with the header is enough.

Let's take again the example of navigate to a website to makes sense with everything you've learned so far. When you type `https://www.example.com` you are making a request to the server via web browser (client) using the GET Method (don't worry about this GET Method right now, we have a special section to explain you this).

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

Do you see the blank line right before the html tag? That's the division between header and body. And this is basically how a request and a response works in real life.

Want to see in action? Open your terminal and type `curl -i https://www.example.com/`.

It's nice to mention that HTTP include, but isn't limited to web browsers. Now, you know that sometimes a request is asking for html code, but sometimes server will process information hidden to the user.

What does that means? Look, let's check a common example. When you type `https://www.facebook.com` on your browser, you are requesting for the Facebook website and in case you are already logged in, then you are expected to look your friend's posts. This happens thanks that in the server, some extra requests are done and you don't notice, such as checking if the user is logged, bring the posts, photos, etc.

When you don't have an account and you fill the form for register your data, this create a POST request to the server. This request are a bit different than the GET method and we are going to explain below.


## HTTP Verbs/Methods
We have already talked about requests done by HTTP, but, are all the request the same? When you do a request, this always can be identified with a verb, that explains us what is needed in the request. The following are the all the verbs in HTTP:

GET
HEAD
POST
PUT
DELETE
CONNECT
OPTIONS
TRACE
PATCH

From all of them, we're going to focus mainly in the most-used ones, which are: GET, POST, PUT and DELETE.

GET method is used to read or retrieve a resource from the server. Usually when request is resolved properly, this returns a 200 response (OK). Otherwise, will return a 404 response (NOT FOUND) or 400 (BAD REQUEST).

This one is the most used accross the HTTP methods. When you type a URL in the location bar in the browser and press ENTER, you're doing a GET request, and if successful the answer will be HTML code from a webpage. Another example are mobile applications. When you open Instagram, for example, the application makes a request to the server to bring the photos from the people you follow. The server respondes with a JSON(JavaScript Object Notation) file with the latest news on your feed, including usernames, dates, comments, image's URL, etc. We will not stop and learn about JSON files right now, they will be more important later on :), right now we just need to understand that is a file the server responds with all the necessary elements to be handle by the application and be shown in the screen.

-- When you're doing a GET, by standard we shouldn't be doing modifications.

Now let's talk about the POST method. This method is used to create new resources, this means that if we're making a request using this method must because we have the intention of creating something new inside our application or the application we're using at the moment, it could be a user, a comment, tweet, etc.

When you make a request of this type, it comes with a 'body', that has all the information needed to generate a new resource. For example, sending a new tweet, this will carry within the body the message we want to share, an ID of the user to create this new tweet and know who is the user sending it, so it can appear in the feed of my followers.

The PUT verb is used to update the data that is already stored, is similir to POST, but instead of creating new resources, they're modified. Like the POST, it will contain a body where the new information we want to send to the server.

Finally let's talk about DELETE method, which is pretty easy  to understand. Doing a request with this method, we ask the server to delete the resource we are asking. In the body, we only include the ID we want to delete.

## HTTP Status Code

* ### 1xx Informational responses

An informational response indicates that the request was received and understood. It alerts the client to wait for a final response.

Usually this codes are used when server has received the request headers and the client should proceed to send the request body.

* 2xx Success

Indicates the action requested by the client was received, understood and accepted.

* 300 Redirection

This class of status code indicates that further action needs to be taken by the user agent in order to fulfill the request. Basically are redirection to a different URL.

* 4xx Client errors

These errors happens when the problem are in the client side, like the famous 404, this means that the resource has not been found.

* 5xx Server errors

The last code errors occur when the problem is from the server side. When you have bad code on your server and something gets broken, then it will return a 5xx error. Other examples are when server is too busy or it's on maintenance.

## Interet
The internet is just a massive red of computers connected with each other, everything you see in the internet is saved in a some random person's hard drive, as well as the movies, music and photos that you have in your computer.

The web pages work parsing HTML code (HyperText Markup Language) that is saved in a file like any other file in any other hard drive.  Usually this files are stored in servers.

The internet looks like this!

![alt text](https://upload.wikimedia.org/wikipedia/commons/d/d2/Internet_map_1024.jpg)

This is a graphic representation of all the computers that can access to internet connected with each other.

This computers at the end of the day are connected by cables, a lot a looot of cables (Even underwater cables)

Obviously, we can't connect a single computer to all the computers in the world, we have a way to communicate with each other. The way to connect with each other is sending the messages accross a lot of computers until it reaches the destination. Imagine we want to travel to Mexico City, to reach this city there's no direct way to reach we must come through a lot of cities first to reach it.

Imagine we're sending a letter to another computer. This letter must contain a message, destination, sender, stamp and seals, although they're not exactly the same they kind of resemble each other. Also this must be a standard language. in this case we talk about the HTTP. protocol.

The web pages must be in a server standing by, waiting for a request for any part of the world. Sometimes the form of the request will be answered with a response from the server, When you visit pages like Netflix it gives you a certain catalog depending on which country you're visiting, If you visit Netflix from Europe you will have a different catalog.
