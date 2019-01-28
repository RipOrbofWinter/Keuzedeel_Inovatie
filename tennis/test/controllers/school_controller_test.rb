require 'test_helper'

class SchoolControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get school_new_url
    assert_response :success
  end

  test "should get show" do
    get school_show_url
    assert_response :success
  end

  test "should get edit" do
    get school_edit_url
    assert_response :success
  end

end
