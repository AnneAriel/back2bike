Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :bikes, only: %i[index show new create destroy] do
    resources :reservations, only: %i[show new create]
  end

  resources :reservations, only: %i[edit update destroy index]
  # Defines the root path route ("/")
  # root "articles#index"
end
