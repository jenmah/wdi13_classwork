directory.StudentListView = Backbone.View.extend({
	tagName: 'ul',
	className: 'nav nav-list',
	initialize: function(){
		// When we search the collection will be reset and the render function called
		this.collection.on('reset', this.render, this);
	},
	render: function(){
		this.$el.empty();
		// Loop through each of the models in the collection (come back from the search box)
		_.each(this.collection.models, function(student){
			this.$el.append(new directory.StudentListItemView({model: student}).render().el)
		}, this)
		return this;
	}
})