var express = require('express');
var mustache = require('mustache');
var fs = require('fs');

var server = express();

server.get('/2-table.html', function(req, res) {
	fs.readFile('./2-table.html', function(err, data) {
		res.writeHead(200, {
			'Content-Type': 'text/html'
		});

		res.write(mustache.render(data.toString(), {
			'objectUsers': [
				{ 'strFirst': Math.random().toString(36).substr(2), 'strLast': Math.random().toString(36).substr(2), 'strGender': Math.random().toString(36).substr(2), 'boolVisible': Math.random() < 0.5 },
				{ 'strFirst': Math.random().toString(36).substr(2), 'strLast': Math.random().toString(36).substr(2), 'strGender': Math.random().toString(36).substr(2), 'boolVisible': Math.random() < 0.5 },
				{ 'strFirst': Math.random().toString(36).substr(2), 'strLast': Math.random().toString(36).substr(2), 'strGender': Math.random().toString(36).substr(2), 'boolVisible': Math.random() < 0.5 }
			],
			'functionName': function() {
				return this.strFirst + ' ' + this.strLast;
			}
		}));

		res.end();
	});
});

server.listen(8080);

console.log('go ahead and open "http://localhost:8080/2-table.html" in your browser');