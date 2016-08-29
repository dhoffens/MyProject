require 'sinatra'

get '/' do
	'Hello, world!'	
end

get '/real_page' do
	'The other page'
end

get '/hi' do
	redirect 'real_page'
end

#hi guard

#hello