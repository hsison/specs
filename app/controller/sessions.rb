require 'sinatra'

enable :sessions

get '/sessions' do
  erb :sign_in
end

# Authenticate User
post '/sessions' do
  if current_user
    redirect "/users/#{current_user.id}"
  else
    flash[:input] = params[:user].to_json
    redirect '/sessions/new'
  end
end

# Sign out
delete "/sessions/:id" do
  clear_session
  redirect '/'
end
