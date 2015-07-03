$(document).ready(function(){
	// Defining the blog class
	blogApp.id = 0;
	// var Post = Backbone.Model.extend({
	// 	defaults: {
	// 		title: 'put blog title here',
	// 		author: 'put author here', 
	// 		content: 'put blog content here'
	// 	},
	// 	initialize: function(){
	// 		console.log('initialize run');
	// 		this.set('postID', id++);
	// 		this.on('change:title', function(instance){
	// 			alert('This blog post is called ' + instance.get('title') + ' and it was written by ' + instance.get('author'));
	// 		})
	// 	}
	// });


// Creating blog post instances
var post1 = new blogApp.Post({title: 'My First Blog Post', author: 'Jen Mah', content: 'Lorem ipsum, this is my very first blog post.'});
var post2 = new blogApp.Post({title: 'My Second Blog Post', author: 'Jennifer Mah', content: 'More lorem ipsum for my second blog post.'});
var post3 = new blogApp.Post({title: 'My Third Blog', author: 'J.Mah', content:'Even more lorem ipsum'});


// Define a collection class
// var Blog = Backbone.Collection.extend({
// 	model: Post
// });

// Create a new collection instance
blogApp.myBlog = new blogApp.Blog([post1, post2, post3]);

// var BlogView = Backbone.View.extend({
// 	el: '#main',
// 	initialize: function(){
// 		console.log('initialize called');
// 		this.template = _.template($('#post-template').html());
// 	},
// 	render:function(){
// 		this.$el.html('<h1>Welcome To My Blog</h1>');
// 		this.$el.append('<ul id="posts"></ul>');
// 		var view = this;
// 		this.collection.each(function(post){
// 			$('#posts').append(view.template(post.toJSON()));
// 		})
// 	}
// });


// Creating a view class
// var PostView = Backbone.View.extend({
// 	el: '#main',
// 	events: {
// 		'click li': 'postClicked',
// 	},
// 	initialize: function(){
// 		this.template = _.template($('#post-view-template').html());
// 	},
// 	render: function(){
// 		this.$el.html(this.template(this.model.toJSON()));
// 	},
// 	postClicked: function(){
// 		console.log(this.model.get('title') + ' clicked');
// 	}
// });

// var AppRouter = Backbone.Router.extend({
// 	routes: {
// 		"": "index",
// 		"posts/:id": "viewPost"
// 	},
// 	index: function(){
// 		var blogView = new BlogView({collection: myBlog});
// 		blogView.render();
// 	},
// 	viewPost: function(id){
// 		var postView = new PostView({model: myBlog.at(id)});
// 		postView.render();
// 	}
// })


// Create a new router instance
var router = new blogApp.AppRouter();
Backbone.history.start();


});