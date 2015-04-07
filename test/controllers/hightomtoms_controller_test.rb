require 'test_helper'

class HightomtomsControllerTest < ActionController::TestCase
  setup do
    @hightomtom = hightomtoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hightomtoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hightomtom" do
    assert_difference('Hightomtom.count') do
      post :create, hightomtom: { brand: @hightomtom.brand, description: @hightomtom.description, imageURL: @hightomtom.imageURL, name: @hightomtom.name, usedby: @hightomtom.usedby }
    end

    assert_redirected_to hightomtom_path(assigns(:hightomtom))
  end

  test "should show hightomtom" do
    get :show, id: @hightomtom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hightomtom
    assert_response :success
  end

  test "should update hightomtom" do
    patch :update, id: @hightomtom, hightomtom: { brand: @hightomtom.brand, description: @hightomtom.description, imageURL: @hightomtom.imageURL, name: @hightomtom.name, usedby: @hightomtom.usedby }
    assert_redirected_to hightomtom_path(assigns(:hightomtom))
  end

  test "should destroy hightomtom" do
    assert_difference('Hightomtom.count', -1) do
      delete :destroy, id: @hightomtom
    end

    assert_redirected_to hightomtoms_path
  end
end
