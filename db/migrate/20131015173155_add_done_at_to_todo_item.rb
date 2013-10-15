class AddDoneAtToTodoItem < ActiveRecord::Migration
  def change
    add_column :todo_items, :done_at, :datetime
  end
end
