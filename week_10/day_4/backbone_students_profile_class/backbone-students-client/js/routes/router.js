directory.Router = Backbone.Router.extend({
	routes: {
		"": "home",
		"students/:id": "studentDetails"
	},
	initialize: function(){
		console.log('initialize');
		directory.shellView = new directory.ShellView();
		$('body').html(directory.shellView.render().el);
	},
	home: function(){
		console.log('home');
		directory.homeView = new directory.HomeView();
		$('#content').html(directory.homeView.render().el);
	},
	studentDetails: function(id){
		// Create a new Backbone student object
		console.log('studentDetails');
		// Send an ajax request to the server to get all the data for the student;
		var student = new directory.Student({id: id});
		var _this = this;
		student.fetch({
			success: function(data){
				$('#content').html(new directory.StudentView({model: data}).render().el);
			}
		})
	}
})