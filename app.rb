require 'bundler'
Bundler.require

require "sinatra/base"
require "sinatra/activerecord"

set :database, "sqlite3:///events.db"

class App < ActiveRecord::Base

	validates_uniqueness_of :first
    validates_presence_of :first

    validates_uniqueness_of :last
    validates_presence_of :last

    validates_uniqueness_of :email
    validates_presence_of :email

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

	get '/contact.erb' do
		erb :contact
	end

	get '/:form_type' do
		erb params[:form_type].to_sym
	end

	post '/:form_type' do
		erb :results
	end

end
