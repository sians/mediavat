Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/create'
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
    resources :categorys, only:  [:index, :new, :create]
    resources :comments, only: [:index, :show]
  end
end
