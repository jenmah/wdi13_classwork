addressBookApp.AppRouter = Backbone.Router.extend({
	routes: {
		"": "index"
	},
	index: function(){
		console.log('index');
		var addressBookView = new addressBookApp.AddressBookView({collection: addressBookApp.addressBook});
		addressBookView.render();
	}
})