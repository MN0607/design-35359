Rails.application.routes.draw do
  devise_for :companies
  devise_for :users

  root to: 'designs#index'

  resources :designs, only: [:index] do
    collection do
      get 'index_co'
    end
  end
end
