Rails.application.routes.draw do
  root "pages#home"
  resources :movies, only: [ :index, :show ]

  get "pages/Home"
  get "movies/index"
  get "movies/show"

  get "up" => "rails/health#show", as: :rails_health_check

  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
