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

  test "should get edit" do
    get edit_category_url(@category)
    assert_response :success
  end

  test "should post update" do
    patch category_url, params: { category: { task: @category.name, description: @category.description} }
    assert_redirect_to categories_url(@category)\
  end

end