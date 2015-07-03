todoListApp.TodoListView = Backbone.View.extend({
	el: '#todo-task',
	events: {'submit form#add' : 'createTask'},
	initialize: function(){
		console.log('initialize called');
		this.collection.bind('add remove change', this.render, this);
	},
	render: function(){
		var taskList = $('#taskList');
		taskList.empty();
		this.collection.each(function(task){
			var taskView = new todoListApp.TaskView({
				model: task})
			taskList.append(taskView.render().el);
		});
	},
	addTask: function(title, description){
		var task = new todoListApp.Task({title: title, description: description});
		this.collection.add(task);
		console.log(this.collection.length);
	},
	createTask: function(event){
		event.preventDefault();
		var title = this.$('#title');
		var description = this.$('#description');
		this.addTask(title.val(), description.val());
		title.val('');
		description.val('');
	}
})