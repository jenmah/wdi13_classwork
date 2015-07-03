directory.ShellView = Backbone.View.extend({
	events: {
		"keyup .search-query": "search"
	},
	initialize: function(){
		// Compile the template and attach it to the shellView
		this.template = _.template($('#shell-template').html());
		// Adding a collection of students to the shell-list view
		this.searchResults = new directory.StudentCollection();
		this.searchResultsView = new directory.StudentListView({collection: this.searchResults, className: 'dropdown-menu'})
		$('body').click(function(){
			$('.dropdown').removeClass('open');
		});
	},
	render: function(){
		// tagName will be a default div, replace the html of the div with the compiled template
		this.$el.html(this.template());

		$('.navbar-search', this.el).append(this.searchResultsView.render().el);
		return this;
	},
	search: function(){
		console.log('search function called');
		var searchData = $('#searchText').val();
		// Make an ajax request to the server to fetch all students that match the search term
		this.searchResults.fetch({
			reset: true,
			data: {name: searchData},
			success: function(data){
				console.log(data);
				console.log('success');
				$('.dropdown').addClass('open');
			}
		})
	}
})