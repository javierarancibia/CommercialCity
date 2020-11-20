Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :profiles do
    resources :comments
  end
  get 'dashboard', to: 'estates#dashboard', as: 'estate_dashboard'
  get 'favoritos', to: 'estates#favorite', as: 'estate_favorite'
  delete 'propiedad/foto/:id', to: 'estates#delete_photo', as: 'delete_photo'
  post 'estates/:estate_id/visits/:id', to: 'visits#update', as: 'update_visit'
  # resources :type
  # resources :category
  resources :estates do
    resources :likes
    resources :visits
  end
  post 'visits', to: 'visits#create', as: 'create_visit'
  devise_for :users, controllers: { 
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks',
    sessions: 'users/sessions'
  }
  root to: 'estates#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
