var task1 = new todoListApp.Task({title: 'Buy milk', description: 'skim and organic'});
var task2 = new todoListApp.Task({title: 'Install UK SIM Card', description: 'at ten pounds/month'});
var task3 = new todoListApp.Task({title: 'Pay rent', description: 'tape on the back of my door'});

todoListApp.todoList = new todoListApp.TodoList([task1, task2, task3]);

$(document).ready(function(){

	var router = new todoListApp.AppRouter();
	Backbone.history.start();

});