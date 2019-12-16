Rails.application.routes.draw do
  get 'bets/index'
  get 'bets/new'
  get 'bets/create'
  get 'bets/edit'
  get 'bets/update'
  get 'bets/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
