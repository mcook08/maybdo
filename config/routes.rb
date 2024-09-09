Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root 'maybedo_tasks#index', as: :authenticated_root
  end

  unauthenticated do
    root 'home#index', as: :unauthenticated_root
  end

  get 'current_stats', to: 'maybedo_tasks#current_stats'

  resources :maybedo_tasks, only: [:index, :new, :create] do
    collection do
      post 'add_daily_challenge'
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
