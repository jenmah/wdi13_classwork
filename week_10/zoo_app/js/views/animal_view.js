zooApp.AnimalView = Backbone.View.extend({
  el: '#main',
  events: {
    'click li': 'animalClicked'
  },
  initialize: function(){
    // Compiling the template into a function and attaching it to the view
    this.template = _.template($('#animal-view-template').html());
  },
  render: function(){
   // this.$el.append('<li>' + this.model.get('type') + ' live in the ' + this.model.get('ecosystem') + '</li>');
   this.$el.html(this.template(this.model.toJSON()));
  },
  animalClicked: function(){
    console.log(this.model.get('type') + ' clicked');
  }
});

