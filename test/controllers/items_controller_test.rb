require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
    # FIXME: use FactoryGirl for testing Photos 
    @item.photos = []
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { folder_id: @item.folder_id, name: @item.name, note: @item.note }
    end

    assert_redirected_to folder_path(assigns(:item).folder)
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    patch :update, id: @item, item: { folder_id: @item.folder_id, name: @item.name, note: @item.note }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to folder_path(@item.folder)
  end
end
