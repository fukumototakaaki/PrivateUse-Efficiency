Rails.application.routes.draw do
  get 'budgets/index'
  get 'users/index'
  get 'facilitys/index'
  get 'payments/index'
  get 'licenses/index'
  get 'infomations/index'
  root "infomations#index"
end
