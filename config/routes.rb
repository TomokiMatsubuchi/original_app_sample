require 'sidekiq/web'
require 'sidekiq-scheduler/web'

Rails.application.routes.draw do
  devise_scope :user do
    root "users/sessions#new"
  end

  devise_for :users,  controllers: {
    omniauth_callbacks: "omniauth_callbacks",
    sessions: 'users/sessions'
  }
  resources :expendable_items


  mount Sidekiq::Web, at: '/sidekiq'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end