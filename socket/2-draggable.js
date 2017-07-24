'use strict';

var express = require('express');
var socket = require('socket.io');
var assert = require('assert');

var server = express();

server.use('/', express.static(__dirname + '/'));

var io = socket(server.listen(process.env.PORT || 8080));

var objectElements = {};

io.on('connection', function(objectSocket) {
	console.log('client connected');

	for (var strIdent in objectElements) {
		io.emit('drag', objectElements[strIdent]);
	}

	objectSocket.on('drag', function(objectData) {
		console.log(objectData);

		assert(objectData.strIdent !== undefined);
		assert(objectData.intLeft !== undefined);
		assert(objectData.intTop !== undefined);

		objectElements[objectData.strIdent] = objectData;

		io.emit('drag', objectData);
	});

	objectSocket.on('disconnect', function() {
		console.log('client disconnected');
	});
});

console.log('go ahead and open "http://localhost:8080/2-draggable.html" in your browser');