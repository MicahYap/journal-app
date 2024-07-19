require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest 
  setup do
    @category = categories(:one)
  end

  test "should get new" do
    get new_category_url
    assert_response :success
  end

  test "should create category" do
    assert_difference("Category.count") do
      post categories_url, params: { category: { name: "New Category", description: "Category Description" } }
    end
    assert_redirected_to category_url(Category.last)
  end
  

  test "should show category" do
    get category_url(@category)
    assert_response :success
  end

  test "should delete category" do
    assert_difference("Category.count", -1) do
      delete category_url(@category)
    end
    assert_redirected_to categories_url
  end
  

end