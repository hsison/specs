require 'spec_helper'
require 'rack/test'


  describe 'GET /sessions' do

    it "should route to sign_in page" do
      get '/sessions'
    expect(last_response).to be_ok
    end

    context "POST 'sessions'" do
    let(:url){'/sessions'}
    end

  end


