

//Creating task
todo1 = new TodoApp.Task({task: 'Buy Milk'});
todo2 = new TodoApp.Task({task: 'Buy Cheese'});
todo3 = new TodoApp.Task({task: 'Watering plants'});
todo4 = new TodoApp.Task({task: 'Throw a frisbee'});
todo5 = new TodoApp.Task({task: 'Make a replicate of Giza Pyramid'});

//Creating a collection
TodoApp.List = new TodoApp.TodoList([todo1, todo2, todo3, todo4, todo5]);

$(document).ready(function(){
	var router = new TodoApp.AppRouter();
	Backbone.history.start();
});
