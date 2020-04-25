Rails.application.routes.draw do
  devise_for :users
  root "infomations#index"
  resources :budgets
  resources :users
  resources :facilitys
  resources :payments
  resources :applications
  resources :licenses
  resources :infomations
  resources :news
end
