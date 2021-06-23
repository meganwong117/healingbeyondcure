Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/pages/:page" => "pages#about"
  get "/pages/:page" => "pages#contact"
  resources :stories
  resources :articles
  resources :questions do
    resources :answers, only: [ :new, :create ]
  end
  resources, :answers, only: [ :destroy ]
  resources :experts
end
