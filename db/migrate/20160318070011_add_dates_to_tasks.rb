class AddDatesToTasks < ActiveRecord::Migration
  def change
    add_column :subtasks, :created_at, :datetime
    add_column :subtasks, :duedate, :datetime
    add_column :tasks, :created_at, :datetime
    add_column :tasks, :duedate, :datetime
  end
end
