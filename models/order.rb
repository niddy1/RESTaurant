class Order < ActiveRecord::Base
  belongs_to :food
  belongs_to :party
  # belongs_to :guest, through: :parties
end
