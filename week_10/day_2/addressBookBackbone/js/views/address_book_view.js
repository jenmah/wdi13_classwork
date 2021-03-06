addressBookApp.AddressBookView = Backbone.View.extend({
	el: '#book',
	events: {'submit form#add' : 'createContact'},
	initialize: function(){
		console.log('initialize called');
		this.collection.bind('add remove change', this.render, this);
	},
	render: function(){
		// Select node with id of contactList from index.html
		var contactList = $('#contactList');
		contactList.empty();
		// console.log('render');
		// Loop over each contact object in the collection
		this.collection.each(function(contact){
			// Create a contactView instance for each contact model
		 var contactView = new addressBookApp.ContactView({model: contact})
		 contactList.append(contactView.render().el);
		});
	},
	addContact: function(name, number){
		// Creating a contact instance
		var contact = new addressBookApp.Contact({name: name, number: number});
		this.collection.add(contact);
		console.log(this.collection.length);
	},
	createContact: function(event){
		// Prevent the form from submitting and the page refreshing
		event.preventDefault();
		var name = this.$('#name');
		var number = this.$('#number');
		this.addContact(name.val(), number.val());
		// Clear the form 
		name.val('');
		number.val('');
	}
})