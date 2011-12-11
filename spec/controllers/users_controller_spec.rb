require 'spec_helper'

describe UsersController do
render_views  #required to add in so that the have_selector method works


  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
    
    
    it "should have the right title" do
      get 'new'
      response.should have_selector("title", :content => "Sign up")
    end
    
    
  end


end
