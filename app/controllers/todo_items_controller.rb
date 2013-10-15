class TodoItemsController < ApplicationController
  def index
    todos = current_user.todo_items.order('"order"')
    respond_to do |format|
      format.html
      format.json {
        render json: todos
      }
    end
  end

  def create
    max_order = current_user.todo_items.maximum(:order) || 0
    todo = current_user.todo_items.create title: params[:title], 
      description: params[:description], 
      due_at: params[:due_at], 
      order: max_order + 1
    respond_to do |format|
      format.json { render json: todo }
    end
  end
end