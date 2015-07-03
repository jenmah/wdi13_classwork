addressBookApp.ContactView = Backbone.View.extend({
	tagName: 'div',
	className: 'pure-u-1-3',
	events: {
		'click button.remove' : 'removeContact',
		'click button.edit' : 'editContact',
		'click button.save' : 'saveContact'
	},
	initialize: function(){
		// Contains the compiled template
		this.contactTemplate = _.template($('#tpl_contact').html());
	},
	render: function(){
		// Compiling the template into a function
		// Calling the function with data to populate template
		// Update the html inside the div with the populated data from the template
		this.$el.html(this.contactTemplate(this.model.toJSON()));
		// We are going to return the view object
		return this;
	},
	removeContact: function(){
		console.log('removeContact');
		this.model.destroy();
	},
	editContact: function(){
		console.log('editContact');
		this.$('h1, p').each(function(){
			$(this).replaceWith($('<input class="' + $(this).attr('class') + '" value="' + $(this).text() + '" />'));
		})
		this.$('button.edit').text('Save').addClass('save').removeClass('edit');
	},
	saveContact: function(){
		console.log('saveContact');
		this.model.set({
			name: this.$('input.name').val(),
			number: this.$('input.number').val()
		})
	}
})