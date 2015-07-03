addressBookApp.addressBook = new addressBookApp.AddressBook([]);

$(document).ready(function(){
  //Creating a new router instance
  var router = new addressBookApp.AppRouter();
  //Watch the url hash fragment for changes
  Backbone.history.start();
});
