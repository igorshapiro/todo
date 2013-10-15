class TodoItemsController < ApplicationController
  def index
    todos = current_user.todo_items
    respond_to do |format|
      format.html
      format.json {
        render json: todos
      }
    end
  end

  def create
    todo = current_user.todo_items.create title: params[:title], description: params[:description], due_at: params[:due_at]
    respond_to do |format|
      format.json { render json: todo }
    end
  end
end