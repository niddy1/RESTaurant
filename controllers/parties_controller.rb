class PartiesController < ApplicationController

#INDEX
  get '/' do
    @parties = Party.where(paid: [false, nil]).order("table_number")
    parties = Party.where(paid: [true]).order("table_number").update_all(table_number: 0)

    erb :'parties/index'
  end

  #NEW
  get '/new' do
    puts "*"*10
    puts params
    @party = Party.find(params[:party][:table_number])
    party=Party.all
    erb :'/parties/new'
  end

  #show

  get '/:id' do
    @party= Party.find(params[:id])
    @orders = Order.where(party_id: params[:id])
    erb :'/parties/show'
  end

  #show receipt
  get '/:id/receipt' do
    @party= Party.find(params[:id])
    @orders = Order.where(party_id: params[:id])
    erb :'/parties/receipt'
  end

#EDIT guest_count
  get '/:id/edit' do
    @party = Party.find(params[:id])
    erb :"/parties/edit"
  end

  #CREATE
  post '/' do
    party = Party.create(params[:party])
    redirect "/parties/#{party.id}"
  end

  #update
  put '/:id' do
    party = Party.find(params[:id])
    party.update(params[:party])
    redirect "/parties"
  end
end
