class Food < ActiceRecord::Base
  has_many :orders
  has_many :parties, through: :orders
end
