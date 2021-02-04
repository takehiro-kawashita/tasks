class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :year
      t.integer :month
      t.integer :day
      # t.integer :limited_at
      t.string :rank
      t.string :title
      t.string :detail
      t.string :category

      t.timestamps
    end
  end
end
