zooApp.AppRouter = Backbone.Router.extend({
    routes: {
      "": "index",
      "animals/:id": "viewAnimal"
    },
    index: function(){
      var zooView = new zooApp.ZooView({collection: zooApp.myZoo}); 
      zooView.render();
    },
    viewAnimal: function(id){
      // Creating an animalView instance passing in an animal model
      var animalView = new zooApp.AnimalView({model: zooApp.myZoo.at(id)});
      animalView.render();
    }
  })