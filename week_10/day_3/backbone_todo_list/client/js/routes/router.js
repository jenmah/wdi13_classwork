todoListApp.AppRouter = Backbone.Router.extend({
	routes: {
		"": "index"
	},
	index: function(){
		console.log(todoListApp.todoList);
		var todoListView = new todoListApp.TodoListView({ collection: todoListApp.todoList });		
		todoListView.render();
	}
})