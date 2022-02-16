Rails.application.routes.draw do
  resources :gardens, only: %i[index show] do
    resources :plants, only: %i[new create]
  end
  resources :plants, only: [:destroy]
end
