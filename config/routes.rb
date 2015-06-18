Rails.application.routes.draw do
  devise_for :users
  root 'index#index'
  resources :zen_periods do
    member do
      get 'vote', to: 'zen_periods#vote'
      get 'cancel_vote', to: 'zen_periods#cancel_vote'
    end
  end
  resources :volunteers
end
