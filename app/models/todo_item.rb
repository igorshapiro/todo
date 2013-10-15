class TodoItem < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :due_at, :title
end
