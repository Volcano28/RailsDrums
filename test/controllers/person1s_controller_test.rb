require 'test_helper'

class Person1sControllerTest < ActionController::TestCase
  setup do
    @person1 = person1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person1" do
    assert_difference('Person1.count') do
      post :create, person1: { bassdrum_carts: @person1.bassdrum_carts, floortomtom_carts: @person1.floortomtom_carts, hightomtom_carts: @person1.hightomtom_carts, hihat_carts: @person1.hihat_carts, snaredrum_carts: @person1.snaredrum_carts }
    end

    assert_redirected_to person1_path(assigns(:person1))
  end

  test "should show person1" do
    get :show, id: @person1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person1
    assert_response :success
  end

  test "should update person1" do
    patch :update, id: @person1, person1: { bassdrum_carts: @person1.bassdrum_carts, floortomtom_carts: @person1.floortomtom_carts, hightomtom_carts: @person1.hightomtom_carts, hihat_carts: @person1.hihat_carts, snaredrum_carts: @person1.snaredrum_carts }
    assert_redirected_to person1_path(assigns(:person1))
  end

  test "should destroy person1" do
    assert_difference('Person1.count', -1) do
      delete :destroy, id: @person1
    end

    assert_redirected_to person1s_path
  end
end
