// Defining our blogApp object
var blogApp = blogApp || {};

blogApp.Post = Backbone.Model.extend({
	defaults: {
		title: 'put blog title here',
		author: 'put author here', 
		content: 'put blog content here'
	},
	initialize: function(){
		console.log('initialize run');
		this.set('postID', blogApp.id++);
		this.on('change:title', function(instance){
			alert('This blog post is called ' + instance.get('title') + ' and it was written by ' + instance.get('author'));
		})
	}
});