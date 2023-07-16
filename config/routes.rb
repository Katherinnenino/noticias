Rails.application.routes.draw do
  resources :posts
  get 'home/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }   

  root "posts#index"
end
