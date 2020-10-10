Rails.application.routes.draw do
  resources :movies, except: [:show, :new, :create]

  get 'welcome/index'
  root to: 'welcome#index'
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
