class Food < ActiveRecord::Base
  has_many :orders
  has_many :parties, through: :orders
  has_many :guests, through: :parties
end

#
#
# binding.pry after do
#
# params
# => {"party"=>{"id"=>"2", "guest_count"=>"5"}}
#
# Party.find(params[:party][:id])
# DEBUG -- :   Party Load (0.6ms)  SELECT  "parties".* FROM "parties" WHERE "parties"."id" = $1 LIMIT 1  [["id", 2]]
# => #<Party:0x007fbfdb3084d0 id: 2, table_number: 2, guest_count: 5, paid: nil, created_at: nil, updated_at: 2015-08-25 21:18:55 UTC>
#


# <a href="/parties/new?party[table_number]=<%=table%>">
#   <div class="tables three columns"><%=table%></div>
# </a>
#
# <%end%>
