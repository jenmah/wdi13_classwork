class Person < ActiveRecord::Base
  has_one :profile
  has_many :checkouts
end
