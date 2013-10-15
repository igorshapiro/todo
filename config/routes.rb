Cellrox::Application.routes.draw do
  root to: 'sessions#new'

  resources :sessions
  resources :todo_items
end
