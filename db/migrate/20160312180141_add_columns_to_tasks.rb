class AddColumnsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :name, :string
    add_column :tasks, :completion, :boolean
  end
end
