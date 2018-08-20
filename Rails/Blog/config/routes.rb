Rails.application.routes.draw do
  resources :users
  root to: 'blog#index'
  root 'static_pages#home'
  get  '/signup',  to: 'users#new'
  get  '/signin',   to: 'user#signin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
