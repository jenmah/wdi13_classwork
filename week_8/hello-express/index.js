var express = require('express');
var app = express();

var burgers = ['Double Cheese Bacon Bonanza', 'Le Big Mac', 'Royale With Cheese'];

var burritos = ['Chicken', 'Beef', 'Pork', 'Veg'];

app.get('/', function(req, res) {
  res.send('Hello world!');
});


app.get('/burgers', function(req, res) {
  res.send(burgers.join(', '));
});

app.get('/burgers/:id', function(req, res) {
  res.send(burgers[req.params.id -1]);
});

app.get('/burritos', function(req,res) {
  res.send(burritos.join(', '));
})

app.get('/burritos/:id', function(req, res){
  res.send(burritos[req.params.id -1]);
})

app.get('/users/:username', function(req, res) {
  console.log(req.params);
  res.send('Oh hai ' + req.params.username);
});

app.get('/thank', function(req, res) {
  console.log(req);
  var name = req.query.name;
  res.send('Thank you kind stranger! Or ' + name);
});

app.listen(3000, function() {
  console.log('Server started on http://localhost:3000');
})