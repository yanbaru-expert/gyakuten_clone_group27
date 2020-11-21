Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "movies#index"
  resources :texts
  resources :aws_texts
  resources :questions, only: [:index, :show]
  resources :movies, only: [:index, :show]
end
