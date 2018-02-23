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

Ya hemos hablado sobre hacer peticiones con HTTP, pero ¿son todas estas peticiones iguales? Al hacer un request, la petición siempre va acompañada por un verbo que nos hace referencia a lo que la petición necesita. Los verbos se listan a continuacion:

GET
HEAD
POST
PUT
DELETE
CONNECT
OPTIONS
TRACE
PATCH

De todos ellos, vamos a enfocarnos solamente en los que más utilizamos, que son: GET, POST, PUT y DELETE.

GET method is used to read or retrieve a resource from the server. Usually when request is resolved properly, this returns a 200 response (OK). Otherwise, will return a 404 response (NOT FOUND) or 400 (BAD REQUEST).

Este es el metodo más utilizado. Al momento de que uno escribe la URL dentro de la barra de direcciones del navegador, este realiza una peticion GET, regresando una respuesta con el HTML de la pagina. Otro ejemplo es en las aplicaciones moviles. Al momento de abrir Instagram, por ejemplo, la aplicación hace una petición al servidor para traer las fotos de la gente a la que sigues. El servidor responde con un JSON con las ultimas actualizaciones, incluyendo el nombre de usuario de quien publico la foto, fecha de subida, URL de la foto, etc. No entraremos en detalle aún sobre que es un JSON, solamente es necesario entender que el servidor nos regresa una lista con todos los elementos necesarios para ser mostrados en la vista principal de la aplicación.

-- Cuando se hace una llamada GET, no se harán modificaciones.

Hablemos ahora del metodo POST. Este metodo es usado para crear nuevos recursos, lo que quiere decir que al momento de hacer una petición por medio de este metodo es porque tenemos la intencion de crear algo nuevo dentro de nuestra aplicación o la aplicación que estemos usando en el momento, ya se a usuario, una publicacion, un tweet, etc.

Cuando se hace una petición de este tipo, generalemente va acompañada de un body, que lleva la informacion necesaria para generar el nuevo recurso. Por ejemplo, al publicar un nuevo tweet, este llevará en su body el mensaje que queremos compartir, acompañados también de mi ID de usuario, para crear este nuevo tweet y saber quien lo acaba publicar y aparezca en la página de inicio de mis seguidores.

El verbo PUT es utilizado para actualizar datos que ya existen, parecido al POST, pero en vez de crear recursos nuevos, es los modifica. Al igual que el POST, este metodo tambien llevará un body donde lleva la nueva información que queremos colocar en el server.

Finalmente hablemos del metodo DELETE, el cual es muy fácil de entender. Al realizar una petición con este metodo, pedimos al servidor que elimine el recurso que le estamos pidiendo. En su body, somalente se include el ID de lo que queremos elimiar.

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

El internet es solo un conjunto de computadoras conectadas entre sí, todo lo que ves en internet está guardado en algún disco duro en alguna persona al igual que tus películas, música y fotos lo están en el tuyo.

Las paginas web trabajan interpretando código HTML (HyperText Markup Language) que normalmente está contenido en un archivo como cualquier otro en un disco duro. Normalmente estos archivos son guardados en servidores.

Así luce el internet!

￼FOTO PERRONA

Esta es la representación gráfica de todas las computadoras con acceso a internet conectadas entre sí.

Estas computadoras están conectadas por cables y muuchos cables (hasta cables submarinos).

Obviamente como no podemos conectar una computadora con todas en el mundo debemos tener una manera de hacer llegar una con otra. La forma de conectarla es teniendo que pasar una solicitud a través de muchas para llegar a otra. Es como si quisieras llegar a Ciudad de México, para llegar no hay una ruta directa sino que debemos tomar una ruta a otras ciudades

Es como si enviáramos una carta cuando nos comunicamos con otra computadora.  Esta debe tener mensaje, destinatario y remitente, sello, estampilla , aunque no son los mismos que la carta se asemejan sus características. También debe estar en un lenguaje estándar como ya vimos, se usa el protocolo HTTP.

Las páginas web deben estar en un servidor esperando cualquier solicitud de cualquier parte del mundo. A veces según la forma de tu solicitud será la respuesta del servidor, como cuando entras a Netflix y te ofrece un cierto tipo de catalogo pero si estás en estados unidos te proporcionaría otro catalogo.
