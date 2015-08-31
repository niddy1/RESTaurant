class FoodsController < ApplicationController

  #index
  get '/' do
    @foods = Food.all
    erb :'foods/index'
  end

  #new
  get '/new' do
    erb :'foods/new'
  end

  #edit
  get '/:id/edit' do
    @food = Food.find(params[:id])
    erb :"foods/edit"
  end

  #create
  post '/' do
    food = Food.create(params[:food])
    redirect '/foods'
  end

  put '/:id' do
    food = Food.find(params[:id])
    food.update(params[:food])
    redirect '/foods'
  end
end
