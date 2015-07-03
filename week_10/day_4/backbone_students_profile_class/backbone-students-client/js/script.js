var directory = {};

$(document).ready(function(){
	// Create a new router instance
	directory.router = new directory.Router();
	// Listen for changes in the hash fragment of the URL
	Backbone.history.start();
})