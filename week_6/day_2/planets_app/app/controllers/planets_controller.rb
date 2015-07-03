class PlanetsController < ApplicationController

  def index
    # using active record to pull all of the planets out of the database and storing them in an instance variable
    @planets = Planet.all
  end

  def show
    # this will look up the planet in the database using its id from params 
    @planet = Planet.find(params[:id])
  end

  def new
    # instantiate an empty planet object
    @planet = Planet.new
  end

  def create
    Planet.create(planet_params)
    redirect_to(planets_path)
  end

  def destroy
    planet = Planet.find(params[:id])
    planet.destroy
    redirect_to(planets_path)
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def update
    # look up the planet in the database
    @planet = Planet.find(params[:id])
    # update the attributes
    @planet.update(planet_params)
    redirect_to(planets_path)
  end

  private
  # this is a security method that allows us to update the following columns in the database at the same time
  def planet_params
    params.require(:planet).permit(:name, :image, :mass, :moons)
  end


end