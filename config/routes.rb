Rails.application.routes.draw do
  get "dashboard", to: 'dashboard#index', as: 'dashboard'
  get 'dashboard/estates'
  get 'dashboard/reports'

  resources :estates
  devise_for :users
  root to: 'public#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
