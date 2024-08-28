# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'maybedo_tasks#index'
  get 'current_stats', to: 'maybedo_tasks#current_stats'
  resources :maybedo_tasks, only: %i[index new create] do
    collection do
      post 'add_daily_challenge'
    end
  end
  get 'up' => 'rails/health#show', as: :rails_health_check
end
