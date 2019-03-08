const http = require('http');
const url = require('url');

const hostname = '127.0.0.1';
const port = 3000;

const server = http.createServer((req, res) => {

  const { query } = url.parse(req.url, true);
  const name = query.name || 'you';
  res.statusCode = 200;
  res.end('Hello ' + name)
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
