class FoodsController < ApplicationController

  #index
  get '/' do
    @foods = Food.all
    erb :'foods/index'
  end
  #new
  get '/new' do
    @party = party.find(params[:id])
    erb :'foods/new'
  end
  #create

  post '/' do
    food = Food.create(params[:food])
    redirect '/foods'
  end
  #show




end
