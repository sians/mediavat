Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  root to: 'pages#home'

  get 'contact', to: 'pages#contact', as: 'contact'
  get 'archive', to: 'pages#archive', as: 'archive'

  resources :posts, only: [:index, :show] do
    resources :comments, only: [:index, :new, :create, :destroy]
  end

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'

    resources :posts
  end
end
