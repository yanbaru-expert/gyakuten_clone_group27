Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "events#index"
  resources :texts do
    resource :read_texts, only: [:create, :destroy]
  end
  resources :lines, only: [:index, :show]
  resources :aws_texts
  resources :questions
  resources :movies, only: [:index, :show] do
    resource :watched_movies, only: [:create, :destroy]
  end
  resources :events
end
