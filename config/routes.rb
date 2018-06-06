Rails.application.routes.draw do
  resources :users
  resources :comments
  resources :posts
  resources :feeds
  resources :pages

  namespace :admin do
    get '/', to: 'static#dashboard', as: :dashboard
    resource  :session, only: %w(new create destroy)
    resources :users, only: %w(index show edit update)
    resources :pages # can add/delete pages
    resources :feeds
    resources :posts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
