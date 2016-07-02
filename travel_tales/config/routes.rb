Rails.application.routes.draw do
  root to: "main#index"
  resources :main, only: :index
  resources :locations
  resources :thoughts
end
