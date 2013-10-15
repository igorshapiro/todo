class TodoItem < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :due_at, :title, :item_index, :done_at

  def move_up
    prev_todo = user.todo_items.where(item_index: item_index - 1).first
    return unless prev_todo

    prev_todo.update_column(:item_index, item_index)
    update_column(:item_index, item_index - 1)
  end

  def move_down
    next_todo = user.todo_items.where(item_index: item_index + 1).first
    return unless next_todo

    next_todo.update_column(:item_index, item_index)
    update_column(:item_index, item_index + 1)
  end

  def mark_undone
    update_column(:done_at, nil)
  end

  def mark_done
    update_column(:done_at, Time.now)
  end

end
