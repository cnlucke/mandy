Rails.application.routes.draw do
  resources :users
  resources :comments
  resources :posts
  resources :feeds
  resources :pages

  namespace :admin do
    resources :users # can add/edit privileges/delete users
    resources :pages # can add/delete pages
    resources :feeds
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
