require 'test_helper'

class AdsControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

end
