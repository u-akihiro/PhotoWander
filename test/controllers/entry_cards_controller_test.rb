require 'test_helper'

class EntryCardsControllerTest < ActionController::TestCase
  setup do
    @entry_card = entry_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entry_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entry_card" do
    assert_difference('EntryCard.count') do
      post :create, entry_card: { finish_flag: @entry_card.finish_flag, rally_id: @entry_card.rally_id, user_id: @entry_card.user_id }
    end

    assert_redirected_to entry_card_path(assigns(:entry_card))
  end

  test "should show entry_card" do
    get :show, id: @entry_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entry_card
    assert_response :success
  end

  test "should update entry_card" do
    patch :update, id: @entry_card, entry_card: { finish_flag: @entry_card.finish_flag, rally_id: @entry_card.rally_id, user_id: @entry_card.user_id }
    assert_redirected_to entry_card_path(assigns(:entry_card))
  end

  test "should destroy entry_card" do
    assert_difference('EntryCard.count', -1) do
      delete :destroy, id: @entry_card
    end

    assert_redirected_to entry_cards_path
  end
end
