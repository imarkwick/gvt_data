require 'sinatra'
require 'sinatra/partial'
require 'data_mapper'
require 'rack-flash'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/suicide_data_#{env}")

require_relative './models/suicide_data.rb'

DataMapper.finalize
DataMapper.auto_upgrade!

# use Rack::Flash
# set :partial_template_engine, :erb


get '/' do
	# @suicide_data = Suicide_Data.all
	@id = Suicide_Data.first.id
	@region = Suicide_Data.first.region
	erb :index	
end
