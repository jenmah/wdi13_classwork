var REPL = require('repl');
var db = require('./models');


// Start the reply and assign a prompt
var repl = REPL.start("Foods >");
// Setting the context of the database to be foodsdatabase
repl.context.db = db;


// Remove all documents from the collection
db.Food.collection.remove();

db.Food.create({
	name: 'Prawn Cocktail',
	yumminess: 'Umm'
}, function(err, food){
	console.log('food created');
})

db.Food.create({
	name: 'Chicken Pie', 
	yumminess: 'Very'
}, function(err, food){
	console.log('Food created');
	console.log(food);
	console.log('Database seeded');
	// Once the second object has been created we are going to exit the repl
	process.exit();
})