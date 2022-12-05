require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

    
    test "should update categories" do
        patch category_path(Category.last), params: { category: {name:"trial"}}
        assert_response :redirect
    end

    test "should show categories specification" do
        get category_path
        assert_response :success
    end
    
end