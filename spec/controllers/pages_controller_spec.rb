require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
    # This is just a test... it's the same as the section above.  Leaving it here for now as a reminder of how the response is returned.
    it "should have the right title" do
      get :home
      expect(response.status).to match 200
    end
    
  end

  describe "GET #profile" do
    it "returns http success" do
      get :profile
      expect(response).to have_http_status(:success)
    end
  end

end


RSpec.describe ItemsController, type: :controller do

  describe "GET #Items" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end    
  end

end


