require 'test_helper'

class ThailiteraturesControllerTest < ActionController::TestCase
  setup do
    @thailiterature = thailiteratures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thailiteratures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thailiterature" do
    assert_difference('Thailiterature.count') do
      post :create, thailiterature: { fileupload: @thailiterature.fileupload, name: @thailiterature.name, picture: @thailiterature.picture }
    end

    assert_redirected_to thailiterature_path(assigns(:thailiterature))
  end

  test "should show thailiterature" do
    get :show, id: @thailiterature
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thailiterature
    assert_response :success
  end

  test "should update thailiterature" do
    patch :update, id: @thailiterature, thailiterature: { fileupload: @thailiterature.fileupload, name: @thailiterature.name, picture: @thailiterature.picture }
    assert_redirected_to thailiterature_path(assigns(:thailiterature))
  end

  test "should destroy thailiterature" do
    assert_difference('Thailiterature.count', -1) do
      delete :destroy, id: @thailiterature
    end

    assert_redirected_to thailiteratures_path
  end
end
