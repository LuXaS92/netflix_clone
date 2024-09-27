Rails.application.routes.draw do
  root "movies#index"   # Página inicial da Netflix clone

  resources :users, only: [ :new, :create, :show ]  # Para gestão de usuários
  resources :movies, only: [ :index, :show ]        # Para exibir filmes
  resources :watchlists, only: [ :create, :destroy ] # Para favoritos
  resources :viewings, only: [ :create, :update ]   # Para registrar visualizações

  # Rotas para login e logout
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
