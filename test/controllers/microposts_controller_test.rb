require 'test_helper'

class MicropostsControllerTest < ActionDispatch::IntegrationTest
     test "should get index" do
    get microposts_path
    assert_response :success
  end
end
