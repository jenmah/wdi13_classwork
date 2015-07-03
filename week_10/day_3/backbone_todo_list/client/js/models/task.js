var todoListApp = todoListApp || {};
todoListApp.Task = Backbone.Model.extend({
	urlRoot: 'http://localhost:3000/tasks',
	defaults: {
		title: '',
		description: ''
	}
});