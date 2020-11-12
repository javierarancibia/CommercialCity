Rails.application.routes.draw do
  get "dashboard", to: 'dashboard#index', as: 'dashboard'
  get 'dashboard/estates'
  get 'dashboard/reports'

  resources :estates do
    resources :likes
  end
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions'
  }
  root to: 'public#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
