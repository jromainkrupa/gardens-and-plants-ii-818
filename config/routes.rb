Rails.application.routes.draw do
  root to: "gardens#index"
  resources :gardens, except: [:index] do
    resources :plants, only: [:new, :create]
  end

  resources :plants, only: [] do
    resources :plant_tags, only: [:new, :create]
  end

  resources :plants, only: :destroy
end
