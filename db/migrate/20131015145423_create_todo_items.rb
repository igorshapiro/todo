class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.references :user
      t.string :title
      t.string :description
      t.datetime :due_at
      t.integer :order

      t.timestamps
    end
    add_index :todo_items, :user_id
  end
end
