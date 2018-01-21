require 'test_helper'

class ReplyControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get reply_create_url
    assert_response :success
  end

  test "should get destroy" do
    get reply_destroy_url
    assert_response :success
  end

end
