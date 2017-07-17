var express = require('express');
var mustache = require('mustache');
var fs = require('fs');

var server = express();

server.get('/3-logic.html', function(req, res) {
	fs.readFile('./3-logic.html', function(err, data) {
		res.writeHead(200, {
			'Content-Type': 'text/html'
		});

		res.write(mustache.render(data.toString(), {
			'objectStocks': [
				{ 'strName': Math.random().toString(36).substr(2), 'dblValue': Math.random() * 1000.0, 'dblChange': (Math.random() * 20.0) - 10.0, 'intTime': Math.round(Math.random() * 2000000000000), 'intVolume': Math.round(Math.random() * 1000000000000) },
				{ 'strName': Math.random().toString(36).substr(2), 'dblValue': Math.random() * 1000.0, 'dblChange': (Math.random() * 20.0) - 10.0, 'intTime': Math.round(Math.random() * 2000000000000), 'intVolume': Math.round(Math.random() * 1000000000000) },
				{ 'strName': Math.random().toString(36).substr(2), 'dblValue': Math.random() * 1000.0, 'dblChange': (Math.random() * 20.0) - 10.0, 'intTime': Math.round(Math.random() * 2000000000000), 'intVolume': Math.round(Math.random() * 1000000000000) }
			]
		}));

		res.end();
	});
});

server.listen(8080);

console.log('go ahead and open "http://localhost:8080/3-logic.html" in your browser');