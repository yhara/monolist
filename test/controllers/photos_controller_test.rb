require 'test_helper'

class PhotosControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
    @photo = photos(:one)
  end

  test "should get new" do
    get :new, item_id: @item.id
    assert_response :success
  end

  test "should create photo" do
    assert_difference('Photo.count', +1) do
      up = fixture_file_upload("favicon.png", 'image/png')
      post :create, photo: { item_id: @item.id, body: up }
    end

    assert_redirected_to item_path(@item)
  end

  test "should create photo and item" do
    assert_difference('Item.count', +1) do
      assert_difference('Photo.count', +1) do
        up = fixture_file_upload("favicon.png", 'image/png')
        post :create, folder_id: @item.folder.id, photo: { body: up }
      end
    end

    assert_redirected_to item_path(assigns[:photo].item)
  end

  test "should destroy photo" do
    assert_difference('Photo.count', -1) do
      delete :destroy, id: @photo
    end

    assert_redirected_to item_path(@item)
  end
end
