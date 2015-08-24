require 'bundler'
Bundler.require

#MODELS

require './models/order'
require './models/party'
require './models/food'

#CONTROLLERS
require './controllers/application_controller'
require './controllers/welcome_controller'
require './controllers/parties_controller'
require './controllers/orders_controller'
require './controllers/foods_controller'

#ROUTING

map('/parties' ){ run PartieControllers }
map('/orders' ){ run OrdersControllers }
map('/foods' ){ run FoodsControllers }
map('/' ){ run WelcomeControllers }
