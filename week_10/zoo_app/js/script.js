$(document).ready(function(){
  // Defining the animal class
  zooApp.id = 0;
//   var Animal = Backbone.Model.extend({
//     defaults: {
//      ecosystem: 'sahara',
//      stripes: 0,
//      gender: 'female'
//     },
//     initialize: function(){
//      console.log('initialize run');
//      this.set('animalID', id++);
//      this.on('change:stripes', function(instance){
//       alert('I am a ' + instance.get('type') + ' with' + instance.get('stripes') + 'stripes');
//      })
//     }
// });

// Creating animal instances
var animal1 = new zooApp.Animal({ecosystem: 'mars', stripes: 1, gender: 'male', type: 'loris'});
var animal2 = new zooApp.Animal({ecosystem: 'rainforest', stripes: 3, gender: 'female', type: 'frog'});
var animal3 = new zooApp.Animal({ecosystem: 'savannah', stripes: 200, gender: 'male', type: 'zebra'});

// Define a collection class
// var Zoo = Backbone.Collection.extend({
//   model: Animal
// });


// Create a new collection instance
zooApp.myZoo = new zooApp.Zoo([animal1, animal2, animal3]);

// var ZooView = Backbone.View.extend({
//   el: '#main',
//   initialize: function(){
//     console.log('initialize called');
//     this.template = _.template($("#animal-template").html());
//   },
//   render: function(){
//     this.$el.html('<h1>Welcome To The Zoo</h1>');
//     this.$el.append('<ul id="animals"></ul>');
//     var view = this;
//     this.collection.each(function(animal){
//       // Inside the block the contect of this changes back to the window, we need to sore this in a variable on line 37 and refer to it
//       $('#animals').append(view.template(animal.toJSON()));
//     })
//   }
// });



// Creating a view class
// var AnimalView = Backbone.View.extend({
//   el: '#main',
//   events: {
//     'click li': 'animalClicked'
//   },
//   initialize: function(){
//     // Compiling the template into a function and attaching it to the view
//     this.template = _.template($('#animal-view-template').html());
//   },
//   render: function(){
//    // this.$el.append('<li>' + this.model.get('type') + ' live in the ' + this.model.get('ecosystem') + '</li>');
//    this.$el.html(this.template(this.model.toJSON()));
//   },
//   animalClicked: function(){
//     console.log(this.model.get('type') + ' clicked');
//   }
// });



// Defining the router class
  // var AppRouter = Backbone.Router.extend({
  //   routes: {
  //     "": "index",
  //     "animals/:id": "viewAnimal"
  //   },
  //   index: function(){
  //     var zooView = new ZooView({collection: myZoo}); 
  //     zooView.render();
  //   },
  //   viewAnimal: function(id){
  //     // Creating an animalView instance passing in an animal model
  //     var animalView = new AnimalView({model: myZoo.at(id)});
  //     animalView.render();
  //   }
  // })

  // Create a new router instance
  var router = new zooApp.AppRouter();
  // Watching url hash fragment for changes
  Backbone.history.start();

});