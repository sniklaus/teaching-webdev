'use strict';

var express = require('express');
var socket = require('socket.io');
var assert = require('assert');

var server = express();

server.use('/', express.static(__dirname + '/'));

var io = socket(server.listen(process.env.PORT || 8080));

setInterval(function() {
	io.emit('message', {
		'intTimestamp': new Date().getTime(),
		'strMessage': Math.random().toString(36).substr(2, 8)
	});
}, 1000);

console.log('go ahead and open "http://localhost:8080/1-lorem.html" in your browser');