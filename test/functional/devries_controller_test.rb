require 'test_helper'

class DevriesControllerTest < ActionController::TestCase
  setup do
    @devry = devries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create devry" do
    assert_difference('Devry.count') do
      post :create, devry: { age: @devry.age, major: @devry.major, name: @devry.name }
    end

    assert_redirected_to devry_path(assigns(:devry))
  end

  test "should show devry" do
    get :show, id: @devry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @devry
    assert_response :success
  end

  test "should update devry" do
    put :update, id: @devry, devry: { age: @devry.age, major: @devry.major, name: @devry.name }
    assert_redirected_to devry_path(assigns(:devry))
  end

  test "should destroy devry" do
    assert_difference('Devry.count', -1) do
      delete :destroy, id: @devry
    end

    assert_redirected_to devries_path
  end
end
