Rails.application.routes.draw do
  resources :posts, only: [:index, :create]
end
