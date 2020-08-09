Rails.application.routes.draw do
  get 'certificates/show'
  devise_for :users
  root to: 'pages#home'

  resources :questions, only: [] do
    resources :user_answers, only: [:create]
  end

  resources :courses, only: [:index, :show] do
    resources :user_courses, only: [:create, :update]
  end
  resources :users, only: [:index, :show]
  resources :companies, only: [:show]
  resources :certificates, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
