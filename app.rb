require 'sinatra/base'
require './lib/compliment'

require 'bundler'
Bundler.require



module Compliment
class App < Sinatra::Base

	get '/' do
		@random = EmergencyCompliment.new
		erb :compliment
	end

	get '/compliments' do
		@random = EmergencyCompliment.new
		erb :compliment
	end

end
end