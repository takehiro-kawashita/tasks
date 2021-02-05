class AddColumnLimitedAtToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :limited_at, :datetime
  end
end
