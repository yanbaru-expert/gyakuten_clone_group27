Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: "movies#index"
  resources :texts, only: [:index, :show]
  # get  " /texts/#{text.id}"  => "texts#show"
  
end
