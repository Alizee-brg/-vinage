Rails.application.routes.draw do
  get 'bottles/index'
  get 'bottles/show'
  get 'cellars/show'
  devise_for :users
  root to: 'pages#home'

  resources :cellar, only: :show
  resources :bottles, only: [:index, :show] do
    resources :stocks, only: [:create, :update, :destroy]
  end
end
