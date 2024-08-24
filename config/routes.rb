Rails.application.routes.draw do
  devise_for :users
  root 'maybedo_tasks#index'
  get 'current_stats', to: 'maybedo_tasks#current_stats'
  resources :maybedo_tasks, only: [:index, :new, :create]
  get "up" => "rails/health#show", as: :rails_health_check
end
