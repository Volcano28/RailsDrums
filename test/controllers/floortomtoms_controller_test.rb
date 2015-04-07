require 'test_helper'

class FloortomtomsControllerTest < ActionController::TestCase
  setup do
    @floortomtom = floortomtoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:floortomtoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create floortomtom" do
    assert_difference('Floortomtom.count') do
      post :create, floortomtom: { brand: @floortomtom.brand, description: @floortomtom.description, imageURL: @floortomtom.imageURL, name: @floortomtom.name, usedby: @floortomtom.usedby }
    end

    assert_redirected_to floortomtom_path(assigns(:floortomtom))
  end

  test "should show floortomtom" do
    get :show, id: @floortomtom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @floortomtom
    assert_response :success
  end

  test "should update floortomtom" do
    patch :update, id: @floortomtom, floortomtom: { brand: @floortomtom.brand, description: @floortomtom.description, imageURL: @floortomtom.imageURL, name: @floortomtom.name, usedby: @floortomtom.usedby }
    assert_redirected_to floortomtom_path(assigns(:floortomtom))
  end

  test "should destroy floortomtom" do
    assert_difference('Floortomtom.count', -1) do
      delete :destroy, id: @floortomtom
    end

    assert_redirected_to floortomtoms_path
  end
end
