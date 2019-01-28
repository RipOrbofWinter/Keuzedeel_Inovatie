require 'test_helper'

class AanmeldingenControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get aanmeldingen_new_url
    assert_response :success
  end

  test "should get show" do
    get aanmeldingen_show_url
    assert_response :success
  end

end
