class Guest < ActiveRecord::Base
  belongs_to :party
  has_many :orders, through: :parties
  has_many :foods, through: :orders
end
