directory.HomeView = Backbone.View.extend({
	initialize: function(){
		console.log('initialize');
		this.template = _.template($('#home-view').html());
	},
	render: function(){
		this.$el.html(this.template());
		// Return the whole view object from the render function
		return this;
	}
})