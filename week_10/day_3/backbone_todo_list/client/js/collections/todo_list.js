todoListApp.TodoList = Backbone.Collection.extend({
	url: 'http://localhost:3000/tasks',
	model: todoListApp.Task
})