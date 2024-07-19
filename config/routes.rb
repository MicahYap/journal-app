Rails.application.routes.draw do
  # devise_for :users
  resources :categories do
    resources :tasks
  end

  get 'tasksToday', to: 'categories#tasksToday', as: 'tasksToday'

end
