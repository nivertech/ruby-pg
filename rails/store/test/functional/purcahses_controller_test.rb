require 'test_helper'

class PurcahsesControllerTest < ActionController::TestCase
  setup do
    @purcahse = purcahses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purcahses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purcahse" do
    assert_difference('Purcahse.count') do
      post :create, purcahse: { item: @purcahse.item, price: @purcahse.price }
    end

    assert_redirected_to purcahse_path(assigns(:purcahse))
  end

  test "should show purcahse" do
    get :show, id: @purcahse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purcahse
    assert_response :success
  end

  test "should update purcahse" do
    put :update, id: @purcahse, purcahse: { item: @purcahse.item, price: @purcahse.price }
    assert_redirected_to purcahse_path(assigns(:purcahse))
  end

  test "should destroy purcahse" do
    assert_difference('Purcahse.count', -1) do
      delete :destroy, id: @purcahse
    end

    assert_redirected_to purcahses_path
  end
end
