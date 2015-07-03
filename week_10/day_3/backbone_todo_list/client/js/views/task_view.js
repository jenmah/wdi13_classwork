todoListApp.TaskView = Backbone.View.extend({
	tagName: 'div',
	events: {
		'click button.remove' : 'removeTask',
		'click button.edit' : 'editTask',
		'click button.save' : 'saveTask'
	},
	initialize: function(){
		this.taskTemplate = _.template($('#tasks').html());
	},
	render: function(){
		this.$el.html(this.taskTemplate(this.model.toJSON()));
		return this;
	},
	removeTask: function(){
		console.log('removeTask');
		this.model.destroy();
	},
	editTask: function(){
		console.log('editTask');
	}
});

