Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  resources :posts
  resources :users, only: [:index, :show, :edit, :update]
  get 'posts/category/:id', to: 'posts#category', as: 'category'
end
