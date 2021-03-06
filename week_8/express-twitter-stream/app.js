var express = require('express');
var app = express();
var server = require('http').createServer(app);
var morgan = require('morgan');
var port = process.env.PORT || 3000;
var router = express.Router();

app.set('views', './views');
app.set('view engine', 'ejs');

app.use(morgan('dev'));

app.use(express.static(__dirname + '/public'));

// Logging Middleware
// app.use(function(req, res, next) {
// 	console.log('%s request to %s from %s', req.method, req.path, req.ip);
// 	next();
// });

router.get('/', function(req, res) {
	res.render('index', { header: 'index!', name: 'Jen' });
});

router.get('/contact', function(req, res) {
	res.render('contact', { header: 'contact?' });
});

router.get('/about', function(req, res) {
	res.render('about', { header: 'about!' });
});

app.use('/', router);

server.listen(port, function() {
	console.log('Server started on http://localhost:', port);
});


var io = require('socket.io')(server);

var Twit = require('twit');

var twitter = new Twit({
    consumer_key: process.env.TWITTER_CONSUMER_KEY
  , consumer_secret: process.env.TWITTER_CONSUMER_SECRET
  , access_token: process.env.TWITTER_ACCESS_TOKEN
  , access_token_secret: process.env.TWITTER_ACCESS_TOKEN_SECRET
});

var stream = twitter.stream('statuses/filter', { track: 'sharks'});

// This is coming from socket.io. "connect" is a reserved word
io.on('connect', function(socket) {
	// This is coming from the twit module
	//'tweet' is one of the events it listens to
	stream.on('tweet', function(status) {
		// this is our own channel we set up to send t   he tweets down to the client
		// this can be called anything but must be the same on the client!
		var data = {};
		data.name = status.user.name;
		data.screen_name = status.user.screen_name;
		data.text = status.text;
		data.user_profile_image = status.user.profile_image_url;
		socket.emit('statuses', data);
	})
});