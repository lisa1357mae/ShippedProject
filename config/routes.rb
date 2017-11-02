Rails.application.routes.draw do
  devise_for :companies
  root 'home#index'
  resources :boats
  resources :boat_jobs
  resources :customers
  resources :jobs
  resources :companies
  resources :posts

get 'logout' => "home#logout"
get 'dashboard' => "home#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
	