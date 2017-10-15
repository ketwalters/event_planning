require 'bundler'
Bundler.require
require './lib/contact'

require "sinatra/base"

	get '/' do
		erb :index 
	end

	get '/new' do
		@contact = Contact.new
		erb :new
	end

	post '/new' do
		@contact = Contact.new(params[:contact])
		if @contact.save
      redirect '/results' 
		else
      "Sorry there was an error"
		end
	end

	get '/weddings' do
		erb :weddings
	end

	get '/birthdays' do
		erb :birthdays
	end

	get '/anniversaries' do
		erb :anniversaries
	end

	get '/about' do
		erb :about
	end

  get '/results' do
    erb :results
  end

  get '/contacts' do
  	@contacts = Contact.all
  	erb:show
  end





