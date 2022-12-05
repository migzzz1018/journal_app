require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest

    test "should get index" do
        get categories_url
        assert_response :success
    end
    
    test "should update categories" do
        @category = categories(:one)
        patch category_url(@category), params: { category: { name: "UPDATE" } }
        assert_redirected_to category_url(@category)
    end

    test "should show categories specification" do
        category = categories(:one)
        get category_url(category)
        assert_response :success
    end

end