var mongoose = require('mongoose');
mongoose.connect("mongodb://localhost/foodsdatabase");


// Defining the blueprint for Food documents
var FoodSchema = new mongoose.Schema({
	name: {
		type: String,
		default: ''
	},
	yumminess: {
		type: String,
		default: ''
	} 
})


// Creating a mongoose Food model to allow us to instantiate new food documents
var Food = mongoose.model('Food', FoodSchema)

module.exports.Food = Food;