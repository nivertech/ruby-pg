require 'test_helper'

class MasterControllerTest < ActionController::TestCase
  test "should get action" do
    get :action
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

end
