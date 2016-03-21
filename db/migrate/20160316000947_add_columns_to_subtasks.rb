class AddColumnsToSubtasks < ActiveRecord::Migration
  def change
    add_column :subtasks, :name, :string
    add_column :subtasks, :completion, :boolean
  end
end
