require 'sinatra/base'
class RpsChallenge < Sinatra::Base
	enable :sessions

	get '/' do
		@players_name = params[:players_name]
		erb :index		
	end

	post '/names' do
		@players_name = params[:players_name]
		erb :play
	end

	run! if app_file == $0
end

