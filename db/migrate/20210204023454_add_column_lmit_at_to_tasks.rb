class AddColumnLmitAtToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :limit_at, :integer
  end
end
