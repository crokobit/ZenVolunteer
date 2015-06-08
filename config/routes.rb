Rails.application.routes.draw do
  root 'index#index'
  resources :zen_periods
end
