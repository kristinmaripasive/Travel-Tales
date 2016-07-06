Rails.application.routes.draw do
  root to: "main#index"
  resources :main, only: [:index, :show]

  resources :locations do
    resources :thoughts do
      resources :comments, only: [:new, :create, :destroy]
    end
  end

  resources :users
  resource  :session

end
