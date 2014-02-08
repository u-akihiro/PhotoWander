require 'test_helper'

class StampsControllerTest < ActionController::TestCase
  setup do
    @stamp = stamps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stamps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stamp" do
    assert_difference('Stamp.count') do
      post :create, stamp: { checkpoint_id: @stamp.checkpoint_id, entry_card_id: @stamp.entry_card_id, file_height: @stamp.file_height, file_name: @stamp.file_name, file_size: @stamp.file_size, file_type: @stamp.file_type, file_width: @stamp.file_width }
    end

    assert_redirected_to stamp_path(assigns(:stamp))
  end

  test "should show stamp" do
    get :show, id: @stamp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stamp
    assert_response :success
  end

  test "should update stamp" do
    patch :update, id: @stamp, stamp: { checkpoint_id: @stamp.checkpoint_id, entry_card_id: @stamp.entry_card_id, file_height: @stamp.file_height, file_name: @stamp.file_name, file_size: @stamp.file_size, file_type: @stamp.file_type, file_width: @stamp.file_width }
    assert_redirected_to stamp_path(assigns(:stamp))
  end

  test "should destroy stamp" do
    assert_difference('Stamp.count', -1) do
      delete :destroy, id: @stamp
    end

    assert_redirected_to stamps_path
  end
end
