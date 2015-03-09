require 'spec_helper'
require 'rack/test'


  describe 'GET /users' do

    it "should route to sign_up page" do
      get '/users'
    expect(last_response).to be_ok
    end

    context "POST '/users'" do
    let(:url){'/users'}
    end

  end
