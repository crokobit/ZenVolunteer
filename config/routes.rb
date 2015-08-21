Rails.application.routes.draw do
  devise_for :users
  root 'zen_periods#index'
  resources :zen_periods do
    # FIXME should put this in resources :volunteers
    member do
      get 'vote', to: 'zen_periods#vote'
      get 'cancel_vote', to: 'zen_periods#cancel_vote'
    end
  end
  resources :volunteers do
    collection do
      get 'mail_all', to: 'volunteers#mail_all'
    end

    member do
      get 'mail', to: 'volunteers#mail'
    end

    resources :surveys
  end
end
