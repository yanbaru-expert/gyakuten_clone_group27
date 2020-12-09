Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "movies#index"
  resources :texts do
    resource :read_texts, only: [:create, :destroy]
  end
  resources :lines, only: [:index, :show]
  resources :aws_texts
  resources :movies, only: [:index, :show]
end
