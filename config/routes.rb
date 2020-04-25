Rails.application.routes.draw do
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
