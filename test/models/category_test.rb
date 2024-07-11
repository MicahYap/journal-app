require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test 'should not save without task name' do
    category = Category.new(description: 'description here')
    assert_not category.save, 'Saved without task name!'
  end

  test 'should not save without description' do
    category = Category.new(task: 'task name here')
    assert_not category.save, 'Saved without description!'
  end
end
