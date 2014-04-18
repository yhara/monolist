require 'test_helper'

class TagsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
    @item.tag_list = 'todo'
    @item.save!
  end

  test "should get show" do
    get :show, id: @item.tags.first
    assert_response :success
  end
end
