require 'sinatra'
require 'yaml' 
require_relative 'pet_methods.rb'
require_relative 'logic.rb'
require 'sinatra/reloader' if development?




get '/' do
	erb :index
end

get '/create' do
	erb :create
end

post '/create' do 
	if params[:new_name]
		load_stats
  end
  if params[:load]
 		load_last_save
  end
  statusCheck
	erb :status
end 

post '/status' do

	if params[:feed]
		feed 
	end
	if params[:play]
		play
	end
	if params[:sleep]
		sleep
	end
	if params[:drink]
		drink
	end
	if params[:hunt]
		hunt
	end
	if params[:walk]
		walk
	end
	if params[:wash]
		wash
	end
	if params[:petCat]
		petCat
	end
	if params[:date]
		date
	end 
	if params[:wait]
		wait
	end
	if params[:secondLife]
		secondLife
	end
	if params[:save]
		save_to_yaml
		redirect :"/saved"
	end

	if $dead == false
		erb :status
	else 
		erb :lose
	end

end

get '/about' do
	erb :about
end

get '/saved' do
	erb :saved
end







