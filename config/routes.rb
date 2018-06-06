Rails.application.routes.draw do
  resources :pages, only: [:index, :show, :new, :destroy]
  resources :feeds, only: [:index, :show, :new, :destroy]
  resources :posts, only: [:show, :new, :destroy]
  resources :comments, only: [:show, :new, :destroy]

  namespace :admin do
    get '/', to: 'static#dashboard', as: :dashboard
    resource  :session, only: %w(new create destroy)
    resources :users, only: %w(index show edit update)
    resources :pages
    resources :feeds
    resources :posts
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
