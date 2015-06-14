Rails.application.routes.draw do
  devise_for :users
  root 'index#index'
  resources :zen_periods
  resources :volunteers
end
