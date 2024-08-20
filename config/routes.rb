Rails.application.routes.draw do
  root 'maybedo_tasks#index'
  resources :maybedo_tasks, only: [:index, :new, :create]
  get "up" => "rails/health#show", as: :rails_health_check
end
