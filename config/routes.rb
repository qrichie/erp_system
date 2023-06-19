Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

 
  resources :orders

  resources :customers
  resources :processors

  root "home#index"

end
