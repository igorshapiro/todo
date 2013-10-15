class AddItemIndexToTodoItem < ActiveRecord::Migration
  def change
    add_column :todo_items, :item_index, :integer
  end
end
