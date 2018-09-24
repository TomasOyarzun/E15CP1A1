Rails.application.routes.draw do
	get 'histories/user_histories'
  resources :histories
  resource :sessions, only: [:create, :destroy]
  get 'users/sign_up', to: 'users#new'
  get 'users/sign_in', to: 'sessions#new'
  post 'users', to: 'users#create'
  root 'histories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
