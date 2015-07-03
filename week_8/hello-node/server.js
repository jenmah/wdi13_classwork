var http = require('http');
http.createServer(function (req, res) {

  console.log(req.method, req.url);

  if (req.url === '/') {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('Hello World\n');
  } else if(req.url === '/about') {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('About Jen\n');
  } else {
    res.writeHead(404, {'Content-Type': 'text/plain'});
    res.end('Error. Page not found.\n');
  }

}).listen(1337, 'localhost');

console.log('Server running at http://localhost:1337/');