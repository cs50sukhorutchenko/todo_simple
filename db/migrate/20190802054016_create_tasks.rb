class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.boolean :completed
      t.string  :task_name
      t.integer :due_date
      t.integer :project_id
      t.timestamps
    end
  end
end
