require 'test_helper'

class officesControllerTest < ActionController::TestCase
  test "should get dex" do
    get :index, format: "json", params: {name: "test"}
    assert_response :success
  end
end
