require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

    test "should not save category with no category_name" do 
        category = Category.new
        assert_not category.save, "Saved category with no name"
    end

    test "should not save category with category_name less than 5 category" do
        category = Category.new
        category.name = 'try'
        assert_not category.save, "Saved category with less than 5 category"
    end
end