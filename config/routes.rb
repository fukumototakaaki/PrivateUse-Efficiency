Rails.application.routes.draw do
  devise_for :users
  root "infomations#index"
  resources :users
  resources :applications
  resources :facilitys
  resources :payments
  resources :licenses
  resources :budgets
  resources :infomations
  resources :news
end
