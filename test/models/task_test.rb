require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test 'should not save without task name' do
    task = Task.new(description: 'description here', date: 'date here')
    assert_not task.save, 'Saved the task without a task name!'
  end

  test 'should not save without description' do
    task = Task.new(task: 'task name here', date: 'date here')
    assert_not task.save, 'Saved the task without a description!'
  end

  test 'should save with both task name and description' do
    task = Task.new(task: 'task name here', description: 'description here', date: 'date here')
    assert task.save, 'Could not save the task with both task name and description'
  end
end
