var http = require('http');

var server = http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/plain'});
    res.end('Hello World');
});

server.listen(5000);

console.log('Server running at http://localhost:5000/');
