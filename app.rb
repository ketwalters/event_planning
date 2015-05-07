require 'bundler'
Bundler.require

class App < Sinatra::Application

	get '/' do
		erb :index 
	end

	get '/weddings.erb' do
		erb :weddings
	end

	get '/birthdays.erb' do
		erb :birthdays
	end

	get '/anniversaries.erb' do
		erb :anniversaries
	end

	get '/about.erb' do
		erb :about
	end

end