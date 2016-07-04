Rails.application.routes.draw do
  root to: "main#index"
  resources :main, only: [:index, :show]

  resources :locations do
    resources :thoughts
  end

  resources :users
  resource  :session

end
