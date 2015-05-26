class Apartment

  attr_accessor :tenants

  def initialize(options = {} )
    @price = options[:price]
    @occupied = options[:occupied]
    @balcony = options[:balcony]
    @sqft = options[:sqft]
    @bedrooms = options[:bedrooms]
    @bathrooms = options[:bathrooms]
    @tenants = options[:tenants] || []
  end

  def to_s
    "This apartment has #{@bedrooms} bedrooms"
  end

end