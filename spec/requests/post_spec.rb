require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET /index" do
    it "returns a successful response" do
      get :index
      expect(@reponse).to be_nil
    end
  end
end
