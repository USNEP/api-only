require 'test_helper'

class NepalsControllerTest < ActionController::TestCase
  setup do
    @nepal = nepals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nepals)
  end

  test "should create nepal" do
    assert_difference('Nepal.count') do
      post :create, nepal: { string: @nepal.string }
    end

    assert_response 201
  end

  test "should show nepal" do
    get :show, id: @nepal
    assert_response :success
  end

  test "should update nepal" do
    put :update, id: @nepal, nepal: { string: @nepal.string }
    assert_response 204
  end

  test "should destroy nepal" do
    assert_difference('Nepal.count', -1) do
      delete :destroy, id: @nepal
    end

    assert_response 204
  end
end
