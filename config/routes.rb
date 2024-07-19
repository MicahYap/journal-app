Rails.application.routes.draw do
  resources :secured_assets
  devise_for :users
  # devise_for :users
  resources :categories do
    resources :tasks
  end

  get 'tasksToday', to: 'categories#tasksToday', as: 'tasksToday'

end
