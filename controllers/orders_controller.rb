class OrdersController < ApplicationController

  get '/' do

    @orders = Order.all
    erb :'orders/index'
  end

  get '/new' do
    @foods = Food.all
    @party = Party.find(params[:party][:id])
    erb :'/orders/new'
  end

  post '/' do
    order = Order.create(params[:order])
    redirect "/parties/#{order.party_id}"
  end

  #SHOW
  get '/:id' do
    @order = Order.find(params[:id])
    erb :'/orders/show'
  end

  delete '/:id' do
    order = Order.find(params[:id])
    order.delete()
    redirect "/parties/#{order.party_id}"
  end


end
