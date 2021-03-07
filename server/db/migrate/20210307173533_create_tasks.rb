class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.date :due_date
      t.boolean :completed

      t.timestamps
    end
  end
end
