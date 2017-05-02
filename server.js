var express = require('express');
var app = express();
var path = require('path');

process.on('SIGINT', function() {
	console.log('IT is happening');
    process.exit();
});

app.get('*', function(req, res) {
    res.sendFile(path.join(__dirname + '/index.html'));
});

app.listen(9000);
