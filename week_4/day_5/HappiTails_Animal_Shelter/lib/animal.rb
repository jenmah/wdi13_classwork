class Animal

  attr_accessor :name

  def initialize(options = {})
    @name = options[:name]
    @type = options[:type]
    @age = options[:age]
    @gender = options[:gender]
  end

# def name
#   @name
# end

# def name=(value)
#   @name = value
# end

end



