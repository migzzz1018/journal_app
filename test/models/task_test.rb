require 'test_helper'

class TaskTest < ActiveSupport::TestCase

    test "should not save task with no task_name" do 
        task = Task.new
        assert_not task.save, "Saved task with no name"
    end

    test "should not save task with task_name less than 5 tasks" do
        task = Task.new
        task.name = 'trial'
        assetask.save, "Saved task with less than 5 tasks"
    end
end