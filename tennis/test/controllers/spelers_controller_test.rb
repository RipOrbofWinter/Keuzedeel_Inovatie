require 'test_helper'

class SpelersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get spelers_new_url
    assert_response :success
  end

end
