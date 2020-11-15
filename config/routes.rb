Rails.application.routes.draw do
  resources :profiles do
    resources :comments
  end
  get 'dashboard', to: 'estates#dashboard', as: 'estate_dashboard'
  get 'favoritos', to: 'estates#favorite', as: 'estate_favorite'
  # resources :type
  # resources :category
  resources :estates do
    resources :likes
  end
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions'
  }
  root to: 'estates#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
