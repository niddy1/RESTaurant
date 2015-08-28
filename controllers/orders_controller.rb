class OrdersController < ApplicationController

  get '/' do
    @open_orders = Order.where(complete:[nil])
    @orders = []
    @open_orders.map do |order|
      if order.party.paid == nil
        @orders.push(order)
      end
    end
    erb :'orders/index'
  end

  get '/new' do
    @foods = Food.all
    @party = Party.find(params[:party][:id])
    erb :'/orders/new'
  end




  put '/:id' do
    order = Order.find(params[:id])
    order.update(params[:order])
    redirect '/orders'
  end

  # #EDIT guest_count
  #   get '/:id/edit' do
  #     @party = Party.find(params[:id])
  #     erb :"/parties/edit"
  #   end
  #
  #
  #   #update
  #
  #   put '/:id' do
  #     party = Party.find(params[:id])
  #     party.update(params[:party])
  #     redirect "/parties/#{party.id}"
  #   end

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
