require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end
  
  test "should get about" do
    get :about
    assert_response :success
  end
  
  test "Home should have the right title" do
    get :home
    assert_select 'title', "Ruby on Rails Tutorial Sample App | Home"
  end

  test "About should have the right title" do
    get :about
    assert_select 'title', "Ruby on Rails Tutorial Sample App | About"
  end

  test "Contact should have the right title" do
    get :contact
    assert_select 'title', "Ruby on Rails Tutorial Sample App | Contact"
  end
end
