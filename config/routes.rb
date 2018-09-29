Rails.application.routes.draw do
  resources :inquiry_replies
  resources :inquiry_details
  resources :potential_buyers
  resources :houses
  resources :realtors
  resources :companies
  resources :househunters
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
