require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
 test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Gilde Opleidingen"
  end

  test "should get help" do
    get profile_path
    assert_response :success
    assert_select "title", "Profile | Gilde Opleidingen"
  end

  test "should get about" do
    get list_path
    assert_response :success
    assert_select "title", "List | Gilde Opleidingen"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Gilde Opleidingen"
  end
end