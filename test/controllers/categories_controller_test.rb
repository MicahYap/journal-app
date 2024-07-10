require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest 
  setup do
    @category = categories(:one)
  end

  test "should get new" do
    get new_category_url
    assert_response: success
  end

  test "should create category" do
    assert_difference ("category.count") do
      post categories_url, params: { category: { task: @category.name, description: @category.description } }
    end

    assert_redirect_to category_url(Category.last)
  end

  test "should show category" do
    get category_url(@category)
    assert_response :success

end