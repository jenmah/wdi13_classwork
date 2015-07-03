var TodoApp = TodoApp || {};

TodoApp.Task = Backbone.Model.extend({
	defaults: {
		task: '',
	}
})