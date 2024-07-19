require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  include Rails.application.routes.url_helpers

  setup do
    @category = categories(:one)  
    @task = tasks(:one) 
  end

  test "should get index" do
    get category_tasks_url(@category)
    assert_response :success
  end

  test "should get new" do
    get new_category_task_path(@category)
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post category_tasks_path(@category), params: { task: { name: "New Task", description: "Task Description", date: "2024-07-19" } }
    end
    assert_redirected_to category_task_path(@category, Task.last)
  end
  
  test "should show task" do
    get category_task_path(@category, @task)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_task_path(@category, @task)
    assert_response :success
  end

  test "should update task" do
    patch category_task_path(@category, @task), params: { task: { task: @task.task, description: @task.description, date: @task.date } }
    assert_redirected_to category_task_path(@category, @task)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete category_task_path(@category, @task)
    end

    assert_redirected_to category_tasks_path(@category)
  end
end
