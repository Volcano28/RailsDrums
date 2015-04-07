require 'test_helper'

class BassdrumsControllerTest < ActionController::TestCase
  setup do
    @bassdrum = bassdrums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bassdrums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bassdrum" do
    assert_difference('Bassdrum.count') do
      post :create, bassdrum: { brand: @bassdrum.brand, description: @bassdrum.description, imageURL: @bassdrum.imageURL, name: @bassdrum.name, usedby: @bassdrum.usedby }
    end

    assert_redirected_to bassdrum_path(assigns(:bassdrum))
  end

  test "should show bassdrum" do
    get :show, id: @bassdrum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bassdrum
    assert_response :success
  end

  test "should update bassdrum" do
    patch :update, id: @bassdrum, bassdrum: { brand: @bassdrum.brand, description: @bassdrum.description, imageURL: @bassdrum.imageURL, name: @bassdrum.name, usedby: @bassdrum.usedby }
    assert_redirected_to bassdrum_path(assigns(:bassdrum))
  end

  test "should destroy bassdrum" do
    assert_difference('Bassdrum.count', -1) do
      delete :destroy, id: @bassdrum
    end

    assert_redirected_to bassdrums_path
  end
end
