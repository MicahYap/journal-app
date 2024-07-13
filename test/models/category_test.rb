require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test 'should not save without task name' do
    category = Category.new(description: 'description here')
    assert_not category.save, 'Saved the category without a task name!'
  end

  test 'should not save without description' do
    category = Category.new(task: 'task name here')
    assert_not category.save, 'Saved the category without a description!'
  end

  test 'should save with both task name and description' do
    category = Category.new(task: 'task name here', description: 'description here')
    assert category.save, 'Could not save the category with both task name and description'
  end
end
