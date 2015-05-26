class Client

  attr_accessor :name

  def initialize(options = {})
    @name = options[:name]
    @animals_owned = options[:animals_owned]
    @age = options[:age]
    @criminal_record = options[:criminal_record]
  end

end