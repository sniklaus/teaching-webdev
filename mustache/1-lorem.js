var express = require('express');
var mustache = require('mustache');
var fs = require('fs');

var server = express();

server.get('/1-lorem.html', function(req, res) {
	fs.readFile('./1-lorem.html', function(err, data) {
		res.writeHead(200, {
			'Content-Type': 'text/html'
		});

		res.write(mustache.render(data.toString(), {
			'objectUser': {
				'strFirst': Math.random().toString(36).substr(2),
				'strLast': Math.random().toString(36).substr(2)
			},
			'strMessage': Math.random().toString(36).substr(2)
		}));

		res.end();
	});
});

server.listen(8080);

console.log('go ahead and open "http://localhost:8080/1-lorem.html" in your browser');