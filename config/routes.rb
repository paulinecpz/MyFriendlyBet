Rails.application.routes.draw do
  get 'bets/index'
  get 'bets/new'
  get 'bets/create'
  get 'bets/edit'
  get 'bets/update'
  get 'bets/destroy'
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:index, :show]
  namespace :user do
    resources :users, only: [:index]
    resources :friendships, only: [:index, :show, :new, :create, :destroy]
  end

  # namespace :trainer do
  #    resources :pokedexes, only: [:show, :edit, :update, :destroy] do
  #      resources :pokemons, only: [:new, :destroy]
  #    end
  #    resources :teams do
  #      resources :pokemons, only: [:create, :destroy]
  #    end
  #  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
