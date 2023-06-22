Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

 
  resources :orders

  resources :customers, only: [:index, :show]
  resources :processors, only: [:index, :show]

  root "home#index"

end
