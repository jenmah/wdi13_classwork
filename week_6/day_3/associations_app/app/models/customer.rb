class Customer < ActiveRecord::Base
  # if we delete a customer, we delete all orders linked to that customer (do not want to leave orphan order objects)
  has_many :orders, dependent: :destroy
  has_one :profile
end
