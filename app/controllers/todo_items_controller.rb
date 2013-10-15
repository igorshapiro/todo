class TodoItemsController < ApplicationController
  def index
    todos = current_user.todo_items.order(:item_index)
    respond_to do |format|
      format.html
      format.json {
        render json: todos
      }
    end
  end

  def create
    max_index = current_user.todo_items.maximum(:item_index) || 0

    due_at = params[:due_at] ? Time.iso8601(params[:due_at]) : nil
    todo = current_user.todo_items.create title: params[:title], 
      description: params[:description], 
      due_at: due_at, 
      item_index: max_index + 1
    respond_to do |format|
      format.json { render json: todo }
    end
  end

  def update
    todo = current_user.todo_items.find(params[:id])
    if params[:move] == 'up'
      todo.move_up
    elsif params[:move] == 'down'
      todo.move_down
    end

    todo.mark_done if params[:done]
    todo.mark_undone if params[:undone]

    render json: {success: true}
  end
end