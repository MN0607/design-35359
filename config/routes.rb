Rails.application.routes.draw do
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

  resources :designs, only: [:index, :new, :create, :show, :edit, :update] do
    collection do
      get 'index_co'
      get 'mypage'
    end
  end
end
