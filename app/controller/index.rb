require 'sinatra'

enable :sessions

get '/' do
  erb :index
end

get '/glasses' do
  erb :view_glasses
end

post '/glasses' do
  content_type :json
  EtsyHelper::Client.listings(params[:term] + " eyeglasses")
end

