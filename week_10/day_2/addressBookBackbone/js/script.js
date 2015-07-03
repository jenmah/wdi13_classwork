var contact1 = new addressBookApp.Contact({name: 'Jennifer Mah', number: '16048071967'});
var contact2 = new addressBookApp.Contact({name: 'Sead Causevic', number: 16047287323});
var contact3 = new addressBookApp.Contact({name: 'Mathilda Thompson', number: 22898071967});

addressBookApp.addressBook = new addressBookApp.AddressBook([contact1, contact2, contact3]);


$(document).ready(function(){

	// Creating a new router instance
	var router = new addressBookApp.AppRouter();
	// Watch the url hash fragment for changes
	Backbone.history.start();

});