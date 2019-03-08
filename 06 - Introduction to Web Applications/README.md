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