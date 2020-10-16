Rails.application.routes.draw do
  resources :movies, except: [:show, :new]

  get 'welcome/index'
  get 'welcome/search'
  get 'welcome/show'
  root to: 'welcome#index'

  get 'user/edit'
  patch 'user/update'
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
