require 'test_helper'

class SnaredrumsControllerTest < ActionController::TestCase
  setup do
    @snaredrum = snaredrums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snaredrums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create snaredrum" do
    assert_difference('Snaredrum.count') do
      post :create, snaredrum: { brand: @snaredrum.brand, description: @snaredrum.description, imageURL: @snaredrum.imageURL, name: @snaredrum.name, usedby: @snaredrum.usedby }
    end

    assert_redirected_to snaredrum_path(assigns(:snaredrum))
  end

  test "should show snaredrum" do
    get :show, id: @snaredrum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @snaredrum
    assert_response :success
  end

  test "should update snaredrum" do
    patch :update, id: @snaredrum, snaredrum: { brand: @snaredrum.brand, description: @snaredrum.description, imageURL: @snaredrum.imageURL, name: @snaredrum.name, usedby: @snaredrum.usedby }
    assert_redirected_to snaredrum_path(assigns(:snaredrum))
  end

  test "should destroy snaredrum" do
    assert_difference('Snaredrum.count', -1) do
      delete :destroy, id: @snaredrum
    end

    assert_redirected_to snaredrums_path
  end
end
