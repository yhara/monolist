require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
    @photo = photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photos)
  end

  test "should get new" do
    get :new, item_id: @item.id
    assert_response :success
  end

  test "should create photo" do
    assert_difference('Photo.count') do
      up = fixture_file_upload("favicon.png", 'image/png')
      post :create, photo: { item_id: @item.id, body: up }
    end

    assert_redirected_to item_path(@item)
  end

  test "should show photo" do
    get :show, id: @photo
    assert_response :success
  end

  test "should destroy photo" do
    assert_difference('Photo.count', -1) do
      delete :destroy, id: @photo
    end

    assert_redirected_to item_path(@item)
  end
end
