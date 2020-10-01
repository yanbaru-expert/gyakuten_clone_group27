Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "texts#index"
  resources :aws_texts

  resources :movies do
    collection { post :import }
  end
end
