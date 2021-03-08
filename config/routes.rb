Rails.application.routes.draw do
  get 'recipes/index'
  get 'recipes/show'
  root to: 'recipes#index'

  resources :recipes, only: [:index, :show ] do
    # resources :doses, only: [:new, :create, :destroy]
    # resources :ingredients, only: [:new, :create]
  end
  # resources :doses, only: [:destroy]

end
