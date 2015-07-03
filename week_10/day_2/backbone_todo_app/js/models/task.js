var todoListApp = todoListApp || {};
todoListApp.Task = Backbone.Model.extend({
	defaults: {
		title: '',
		description: ''
	}
});