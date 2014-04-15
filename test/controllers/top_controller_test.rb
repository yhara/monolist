require 'test_helper'

class TopControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_redirected_to controller: 'folders', action: 'show', id: 1
  end

end
