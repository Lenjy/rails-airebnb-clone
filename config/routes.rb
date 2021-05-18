Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :shoes do
    resources :locations, only: [:create]
  end  
  resources :locations, only: [:update, :edit, :destroy]
  resources :dashboard, only: [:index] do
    resources :shoes, only: [:create]
  end  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
