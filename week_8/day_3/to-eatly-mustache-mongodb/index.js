// REQUIREMENTS //
var express = require("express");
var app = express();
var path = require("path");
var bodyParser = require("body-parser");
// Created a connection to the database from the server
var db = require('./models');

// CONFIG //

// serve js & css files into a public folder
app.use(express.static(__dirname + '/public'));

// body parser config
app.use(bodyParser.urlencoded({ extended: true }));

// DATA //

// pre-seeded food data
var foods = [
  {id: 0, name: "Sushiritto", yumminess: "quite"},
  {id: 1, name: "Green Eggs & Ham", yumminess: "sure"},
  {id: 2, name: "Crayfish", yumminess: "depending"},
  {id: 3, name: "Foie Gras", yumminess: "omg"},
  {id: 4, name: "Kale", yumminess: "meh"}
];

// ROUTES //

// root path
app.get("/", function (req, res){
  res.sendFile(path.join(__dirname + '/public/views/index.html'));
});

// foods index path
app.get("/foods", function (req, res){
  // render foods index as JSON
  // res.send(JSON.stringify(foods));
  db.Food.find({}, function(err, foods){
    res.send(foods);
  })
  // res.send(foods)
});

app.post("/foods", function (req, res){
  db.Food.create(req.body, function(err, food){
    res.send(201, food); // success, object created
  })
});

app.delete("/foods/:id", function (req, res){
  var foodId = req.params.id;
  db.Food.findByIdAndRemove({
    _id: foodId
  }, function(err, food){
    res.send(204); // Success, no content
  })
});

// listen on port 3000
app.listen(3000, function (){
  console.log("listening on port 3000");
});
