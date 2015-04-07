require 'test_helper'

class MiddletomtomsControllerTest < ActionController::TestCase
  setup do
    @middletomtom = middletomtoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:middletomtoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create middletomtom" do
    assert_difference('Middletomtom.count') do
      post :create, middletomtom: { brand: @middletomtom.brand, description: @middletomtom.description, imageURL: @middletomtom.imageURL, name: @middletomtom.name, usedby: @middletomtom.usedby }
    end

    assert_redirected_to middletomtom_path(assigns(:middletomtom))
  end

  test "should show middletomtom" do
    get :show, id: @middletomtom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @middletomtom
    assert_response :success
  end

  test "should update middletomtom" do
    patch :update, id: @middletomtom, middletomtom: { brand: @middletomtom.brand, description: @middletomtom.description, imageURL: @middletomtom.imageURL, name: @middletomtom.name, usedby: @middletomtom.usedby }
    assert_redirected_to middletomtom_path(assigns(:middletomtom))
  end

  test "should destroy middletomtom" do
    assert_difference('Middletomtom.count', -1) do
      delete :destroy, id: @middletomtom
    end

    assert_redirected_to middletomtoms_path
  end
end
