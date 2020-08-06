Rails.application.routes.draw do
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  #   }
    devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get 'articles/new'
  get 'articles/index'
  
  resources :articles do
    resources :comments
  end
  
  root 'articles#index'
  
end
