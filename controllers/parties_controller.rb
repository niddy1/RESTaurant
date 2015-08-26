class PartiesController < ApplicationController

#INDEX
  get '/' do
    @parties = Party.where(paid: [false, nil])
    erb :'parties/index'
  end

  #show

  get '/:id' do
    # binding.pry

    @party= Party.find(params[:id])
    @orders = Order.where(party_id: params[:id])
    erb :'/parties/show'
  end


#EDIT guest_count
  get '/:id/edit' do
    @party = Party.find(params[:id])
    erb :"/parties/edit"
  end


  #NEW
  get '/new' do
    erb :'/parties/new'
  end

  #CREATE
  post '/' do
    party = Party.create(params[:party])
    redirect '/parties'
  end


  #update

  put '/:id' do
    party = Party.find(params[:id])
    party.update(params[:party])
    redirect "/parties/#{party.id}"
  end






end
