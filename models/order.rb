class Order < ActiceRecord::Base
  belongs_to :food
  belongs_to :party
end
