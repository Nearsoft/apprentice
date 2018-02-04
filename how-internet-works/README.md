Hello! 👋 Welcome to this tutorial were we want to teach you a series of useful topics to understand what a Software Developer does and how you can become into one.

The Nearsoft Apprentice program contains the following topics:

1. How internet works
2. Terminal
3. Git
4. Basic concepts
5. HTML
6. CSS
7. Javascript
8. React
9. Bootstrap
10. OOP
11. Ruby
12. API/Rails
13. Rails II
14. Redux
15. Testing
16. QA

These topics have a sequence, ...

Alguna vez te has preguntado ¿como funciona el internet?. En nuestro día a día estamos acostumbrados a comunicarnos, realizar compras, leer noticias y muchas de nuestras tareas diarias a traves de los diferentes dispositivos que estan conectados al internet. Pues bien, aqui te explicaremos como es esto posible, pero para entender en realidad como funciona en necesario comprender algunos conceptos antes.

Hoy vamos a revisar los siguiente conceptos para tener un idea bien clara:

## Agenda

* Protocolo
* HTTP
    - Verbs
    - Status codes
* Internet
* Cliente - servidor

## Protocolo

Se puede definir un protocolo como un conjunto de reglas que rigen un acto.

Puedes pensar en él como un algoritmo estándar  Por ejemplo, para inscribirte en una escuela hay una serie de pasos claves estándar que debes seguir para llevar acabo esto.  

```
e.g.  

1. Llevas los documentos necesarios a cierta oficina
2. Te dan una ficha para pagar con la fecha del examen
3. Pagas en el banco
4. Haces el examen
5. Se califican a los candidatos
6. Se publica la lista de los candidatos
7. Los candidatos pagan la inscripción
8. Se hace corrimiento de lista de ser necesario
9. Segunda ronda para los candidatos
10. Los candidatos de corrimiento pagan
11. Empiezan las clases. 
```

En cuanto a comunicaciones corresponde, hay una serie de protocolos que hay que seguir para conectar mediante bluetooth, wifi, infrarrojo, etc.  Imagínate que cada tipo de dispositivo se comunicara de su propia forma.  Terminaríamos con multiples convertidores de señales de dispositivo a otro, lo cual haría la comunicación entre ellas significativamente lenta, incluyendo comunicación de alta demanda como streaming, gaming, descargas, etc.   Al tener un estándar todas los dispositivos no se tienen que preocupar por como conectarse a otro dispositivo sino ajustarse a funcionar con los protocolos ya establecidos.

## Cliente - Servidor

La arquitectura cliente-servidor es una red de comunicaciones donde los clientes hacen *peticiones* a un servidor, el cual *responde* con lo solicitado.

Vamos a definir dos conceptos muy importantes: request and response.

Un request es una peticion hecha por el cliente, por ejemplo: al momento de querer acceder a una página web. Al escribir la URL en el navegador, este hace una peticion al servidor y una vez que el servidor la recibe sabe como interpretarla.

El response es la respuesta que se da por parte del servidor, la cual llega de regreso al cliente. Como la peticion solamente fue una pagina web, el servidor regresa el HTML correspondiente a URL solicitada, un poco más delante veremos esto a detalle.

Cualquier computadora puede funcionar como servidor, de hecho durante este curso haremos que la tuya se convierta en uno, el cual recibira esas peticiones y respondera a ellas.

## HTTP (Hypertext Transfer Protocol)

El protocolo de transferencia de hiper texto es un protocolo de aplicación para la transferencia de información entre sistemas. HTTP es la base para comunicación de datos de internet (World wide web).
El hiper texto es mostrado en un monitor o cualquier otro dispositivo electrónico con diferente nivel de detalle.

En este protocolo se toma el esquema de cliente/servidor, en el que el cliente le hace algún tipo de petición al servidor y el servidor contesta según el tipo de petición.

Por ejemplo cuando entras a la página de https://google.com tu estás haciendo una petición/request al servidor de google usando el método GET (El cual veremos más adelante). 

Normalmente HTTP tiene 3 características dentro del llamada

1. Url (A donde nos vamos a comunicar)
2. Método de comunicación (GET, POST, etc.)
3. Información extra de ser necesaria

Dentro de la 3era característica, cuando el servidor contesta la respuesta normalmente con tiene 2 cosas, el HEADER(Información extra como fecha, tipo de servidor y el tipo de dato que esta regresando) y el BODY(La información que va a ser procesada por el cliente como HTML, JSON, XML)

Request del cliente  
```
GET /index.html HTTP/1.1
Host: www.example.com

```

Response del servidor


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

Cabe aclarar que HTTP incluye pero no se limita solo a navegadores de internet. Si bien habrá ocasiones en las que el servidor conteste con código HTML para renderear una página web, en el desarrollo de software, el servidor puede contestar con información que le ayudará a procesar información a ocultas del usuario.

Por ejemplo cuando tu entras a facebook, haces un método GET para renderear el HTML pero dentro del procesamiento facebook hace varias llamadas extra al servidor para ver detalles como para ver si el usuario está logeado, traer la información de tu cuenta, tus amigos incluyendo foto si están disponibles, tu timeline, etc.
O bien cuando te registras en una página el navegador hace una petición POST al servidor con los datos del formulario.

## HTTP Status Code

100
Normalmente estos códigos son regresados cuando el cliente envia los encabezados y contesta con 1xx para solicitar el cuerpo al cliente.

200
Los códigos 200 significan que la petición fue exitosa.
200 OK
201 Created: Cuando la petición fue exitosa y se creo un nuevo recurso (Como un usuario)

300
Estos códigos significa que se está haciendo una redirección, si entran a google.com les contestará con 300 guiándolos a una dirección especializada para la búsqueda.
301 Moved Permanently: cuando la url que solicitaste fue movida a otra url y se usa para redireccionarte a la actual

400
Estos errores son cuando los problemas son del lado del cliente, el famoso 404 cuando un recurso no ha sido encontrado.
401 Unauthorized: Cuando solicitas algo a donde no tienes autorizado hacer una petición.

500
Estos errores son cuando los problemas son del lado del servidor, cuando un servidor no lidia con una solicitud bien puede lanzar alguno de estos, por ejemplo 503 es cuando el servidor no puede contestar debido a no disponibilidad como cuando hay mucho tráfico dentro de la página.
500 Internal Server Error cuando la aplicación del servidor fallo repentinamente
503 Service Unavailable: Es cuando el navegador está congestionado o se encuentra en mantenimiento.

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

## Internet

El internet es solo un conjunto de computadoras conectadas entre sí, todo lo que ves en internet está guardado en algún disco duro en alguna persona al igual que tus películas, música y fotos lo están en el tuyo.

Las paginas web trabajan interpretando código HTML (HyperText Markup Language) que normalmente está contenido en un archivo como cualquier otro en un disco duro. Normalmente estos archivos son guardados en servidores.

Así luce el internet!

￼FOTO PERRONA

Esta es la representación gráfica de todas las computadoras con acceso a internet conectadas entre sí.

Estas computadoras están conectadas por cables y muuchos cables (hasta cables submarinos).

Obviamente como no podemos conectar una computadora con todas en el mundo debemos tener una manera de hacer llegar una con otra. La forma de conectarla es teniendo que pasar una solicitud a través de muchas para llegar a otra. Es como si quisieras llegar a Ciudad de México, para llegar no hay una ruta directa sino que debemos tomar una ruta a otras ciudades

Es como si enviáramos una carta cuando nos comunicamos con otra computadora.  Esta debe tener mensaje, destinatario y remitente, sello, estampilla , aunque no son los mismos que la carta se asemejan sus características. También debe estar en un lenguaje estándar como ya vimos, se usa el protocolo HTTP.

Las páginas web deben estar en un servidor esperando cualquier solicitud de cualquier parte del mundo. A veces según la forma de tu solicitud será la respuesta del servidor, como cuando entras a Netflix y te ofrece un cierto tipo de catalogo pero si estás en estados unidos te proporcionaría otro catalogo
