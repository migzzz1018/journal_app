require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
    setup do
        @category = categories(:one)
        @task = tasks(:one)
    end

    test "should get index" do
        get category_tasks_path(@category)
        assert_response :success
      end


    test "should update tasks" do
        patch category_task_url(@category, @task), params: { tasks: { name: "updated", description: "updated"}}
        assert_response :redirect
    end

    test "should show task" do
        get category_task_url(@category, @task)
        assert_response :success
    end

    test "should destroy task" do
        assert_difference("Task.count", -1) do
            delete category_task_url(@category, @task)
        end

        assert_response :redirect
    end

end
        