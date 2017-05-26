Rails.application.routes.draw do
  get 'ingredients/index'

  get 'ingredient/index'

  get 'doses/create'

  resources :cocktails, only: [:show, :index, :new, :create]
  root "cocktails#index"

  resources :ingredients, only: :index

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
