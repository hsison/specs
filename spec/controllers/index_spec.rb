require 'spec_helper'
require 'rack/test'

describe 'GET /' do
  context "GET '/' " do
    it "should route to home page" do
      get '/'
    expect(last_response.body).to include("/specs.")
    end
  end
end


# describe 'GET /glasses' do
#   context "GET '/glasses' " do
#     it "should display all glasses" do
#       get '/glasses'
#       expect(last_response).to eq(200)
#     end
#   end
# end


# describe 'GET /glasses' do

#   it 'renders a successful status' do
#     get '/glasses'
#     expect(last_response.status).to be_ok
#   end

#   it "renders a list of glasses" do
#     Eye.create(name: "Yellow Glasses")

#     get '/glasses'

#     expect(last_response.body).to include("Yellow Glasses")
#   end
# end