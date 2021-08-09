Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/edit'
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  resources :posts
  resources :users, only: [:index, :show, :edit, :update]
  
end
