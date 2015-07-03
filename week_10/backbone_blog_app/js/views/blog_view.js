blogApp.BlogView = Backbone.View.extend({
	el: '#main',
	initialize: function(){
		console.log('initialize called');
		this.template = _.template($('#post-template').html());
	},
	render:function(){
		this.$el.html('<h1>Welcome To My Blog</h1>');
		this.$el.append('<ul id="posts"></ul>');
		var view = this;
		this.collection.each(function(post){
			$('#posts').append(view.template(post.toJSON()));
		})
	}
});