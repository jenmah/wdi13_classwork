blogApp.AppRouter = Backbone.Router.extend({
	routes: {
		"": "index",
		"posts/:id": "viewPost"
	},
	index: function(){
		var blogView = new blogApp.BlogView({collection: blogApp.myBlog});
		blogView.render();
	},
	viewPost: function(id){
		var postView = new blogApp.PostView({model: blogApp.myBlog.at(id)});
		postView.render();
	}
})