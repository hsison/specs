## SIGN UP
require 'sinatra'

enable :sessions


get '/users' do
  erb :sign_up
end

# Create new user
post '/users' do
  create_user
  if current_user
    redirect "/users/#{current_user.id}"
  else
    redirect '/users/new'
  end
end

# Display all wishlists of user - Profile Page
get '/users/:id' do
  @wishlists = User.find(params[:id]).wishlists
  erb :profile
end

# Display specific wishlist and all its items
get "/users/:user_id/wishlists/:wishlist_id" do
  @wishlist = Wishlist.find(params[:wishlist_id])
  @products = @wishlist.products
  erb :products
end

# Create wishlist
post "/users/:id/wishlists" do
  @wishlist = current_user.wishlists.create(params[:wishlist])
  if @wishlist
    redirect "/users/#{current_user.id}/wishlists/#{@wishlist.id}"
  else
    redirect "/users/#{current_user.id}"
  end
end

post "/users/:user_id/wishlists/:wishlist_id/products" do
  Wishlist.find(params[:wishlist_id]).products.create(params[:product])
end
