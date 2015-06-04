class Hotel < ActiveRecord::Base
  has_many :reviews
  
  validates :name, presence: true
  validates :city, presence: true
  validates :country, presence: true

  def average_rating
    return 'No ratings yet!' if reviews.empty?
    # self.reviews.first.rating

    self.reviews.map(&:rating).inject(:+) / reviews.size

    # this will work, but should be done using .map like the above
    # ratings = []
    # self.reviews.each { |review| ratings << review.rating }
    # ratings.sum / ratings.size
  end

end

