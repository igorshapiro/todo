class TodoItem < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :due_at, :title, :order

  def move_up
    prev_todo = user.todo_items.where(order: order - 1).first
    return unless prev_todo

    prev_todo.update_column(:order, order)
    update_column(:order, order - 1)
  end

  def move_down
    next_todo = user.todo_items.where(order: order + 1).first
    return unless next_todo

    next_todo.update_column(:order, order)
    update_column(:order, order + 1)
  end
end
