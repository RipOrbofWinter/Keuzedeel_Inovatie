require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
	test "layout links" do
    	get root_path
    	assert_template 'pages/Home'
    	assert_select "a[href=?]", root_path
    	assert_select "a[href=?]", list_path
  	 	assert_select "a[href=?]", profile_path
   	end
end
