class Shelter

  attr_accessor :animals, :clients

  def initialize(options = {})
    @animals = []
    # @clients = options[:clients] || []
  end

  # def list_animals
  #   puts "These are the available animals at the shelter:"
  #   animals.each { |animal| puts animal.name }
  # end

end
