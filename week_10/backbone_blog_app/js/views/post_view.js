blogApp.PostView = Backbone.View.extend({
	el: '#main',
	events: {
		'click li': 'postClicked',
	},
	initialize: function(){
		this.template = _.template($('#post-view-template').html());
	},
	render: function(){
		this.$el.html(this.template(this.model.toJSON()));
	},
	postClicked: function(){
		console.log(this.model.get('title') + ' clicked');
	}
});