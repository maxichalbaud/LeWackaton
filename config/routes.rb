Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :courses, only: [:index, :show] do
    resources :user_courses, only: [:create]
  end
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
