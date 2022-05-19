require "test_helper"

class LessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get references" do
    get lessons_references_url
    assert_response :success
  end

  test "should get users" do
    get lessons_users_url
    assert_response :success
  end
end
