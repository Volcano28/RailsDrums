require 'test_helper'

class HihatsControllerTest < ActionController::TestCase
  setup do
    @hihat = hihats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hihats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hihat" do
    assert_difference('Hihat.count') do
      post :create, hihat: { brand: @hihat.brand, description: @hihat.description, imageURL: @hihat.imageURL, name: @hihat.name, usedby: @hihat.usedby }
    end

    assert_redirected_to hihat_path(assigns(:hihat))
  end

  test "should show hihat" do
    get :show, id: @hihat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hihat
    assert_response :success
  end

  test "should update hihat" do
    patch :update, id: @hihat, hihat: { brand: @hihat.brand, description: @hihat.description, imageURL: @hihat.imageURL, name: @hihat.name, usedby: @hihat.usedby }
    assert_redirected_to hihat_path(assigns(:hihat))
  end

  test "should destroy hihat" do
    assert_difference('Hihat.count', -1) do
      delete :destroy, id: @hihat
    end

    assert_redirected_to hihats_path
  end
end
