require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET /index" do
    it "returns a successful response" do
      get :index
      expect(response).to have_http_status(200) 
      # expect(assigns(:posts)).to eq([posts])
    end
  end
end
