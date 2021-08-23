Rails.application.routes.draw do
  get 'messages/index'
  get 'users/show'
  devise_for :companies, controllers: {
    sessions: "companies/sessions",
    passwords: 'companies/passwords',
    registrations: "companies/registrations"
  }

  devise_for :users, controllers: {
    sessions: "users/sessions",
    passwords: 'users/passwords',
    registrations: "users/registrations"
  }


  root to: 'designs#index'

  resources :designs do
    collection do
      get 'index_co'
      get 'mypage'
      get 'search_index'
      get 'search'
    end
  end

  resources :rooms, only: [:new, :create, :index, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
