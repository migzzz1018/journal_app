require 'test_helper'

class CategoryControllerTest < ActionDispatch::IntegrationTest

    test "should update categories" do
        update category_update_path
        assert_response :redirect
    end

    test "should show categories specification" do
        get users_path
        assert_response :success
    end
end