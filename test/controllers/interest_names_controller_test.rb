require 'test_helper'

class InterestNamesControllerTest < ActionController::TestCase
  setup do
    @interest_name = interest_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interest_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interest_name" do
    assert_difference('InterestName.count') do
      post :create, interest_name: { name: @interest_name.name }
    end

    assert_redirected_to interest_name_path(assigns(:interest_name))
  end

  test "should show interest_name" do
    get :show, id: @interest_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interest_name
    assert_response :success
  end

  test "should update interest_name" do
    patch :update, id: @interest_name, interest_name: { name: @interest_name.name }
    assert_redirected_to interest_name_path(assigns(:interest_name))
  end

  test "should destroy interest_name" do
    assert_difference('InterestName.count', -1) do
      delete :destroy, id: @interest_name
    end

    assert_redirected_to interest_names_path
  end
end
