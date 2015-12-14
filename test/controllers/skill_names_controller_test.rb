require 'test_helper'

class SkillNamesControllerTest < ActionController::TestCase
  setup do
    @skill_name = skill_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skill_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill_name" do
    assert_difference('SkillName.count') do
      post :create, skill_name: { name: @skill_name.name }
    end

    assert_redirected_to skill_name_path(assigns(:skill_name))
  end

  test "should show skill_name" do
    get :show, id: @skill_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skill_name
    assert_response :success
  end

  test "should update skill_name" do
    patch :update, id: @skill_name, skill_name: { name: @skill_name.name }
    assert_redirected_to skill_name_path(assigns(:skill_name))
  end

  test "should destroy skill_name" do
    assert_difference('SkillName.count', -1) do
      delete :destroy, id: @skill_name
    end

    assert_redirected_to skill_names_path
  end
end
