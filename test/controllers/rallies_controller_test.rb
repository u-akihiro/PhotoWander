require 'test_helper'

class RalliesControllerTest < ActionController::TestCase
  setup do
    @rally = rallies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rallies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rally" do
    assert_difference('Rally.count') do
      post :create, rally: { detail: @rally.detail, ending: @rally.ending, opening: @rally.opening, title: @rally.title }
    end

    assert_redirected_to rally_path(assigns(:rally))
  end

  test "should show rally" do
    get :show, id: @rally
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rally
    assert_response :success
  end

  test "should update rally" do
    patch :update, id: @rally, rally: { detail: @rally.detail, ending: @rally.ending, opening: @rally.opening, title: @rally.title }
    assert_redirected_to rally_path(assigns(:rally))
  end

  test "should destroy rally" do
    assert_difference('Rally.count', -1) do
      delete :destroy, id: @rally
    end

    assert_redirected_to rallies_path
  end
end
