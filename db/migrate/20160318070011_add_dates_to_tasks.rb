class AddDatesToTasks < ActiveRecord::Migration
  def change
    add_column :subtasks, :created_at, :datetime
    add_column :subtasks, :duedate, :date
    add_column :tasks, :created_at, :datetime
    add_column :tasks, :duedate, :date
  end
end
