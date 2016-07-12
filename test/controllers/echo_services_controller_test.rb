require 'test_helper'

class EchoServicesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index, format: "json", params: {param: "test"}
    assert_response :success
  end
end
