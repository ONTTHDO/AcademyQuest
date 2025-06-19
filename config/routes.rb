Rails.application.routes.draw do
  resources :quests
  get "up" => "rails/health#show", as: :rails_health_check

  root "quests#index"
  get "/brag", to: "brags#index", as: :brag
end
