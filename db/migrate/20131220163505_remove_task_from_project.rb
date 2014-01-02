class RemoveTaskFromProject < ActiveRecord::Migration
  def up
    remove_column :projects, :task
  end

  def down
    add_column :projects, :task, :string
  end
end
