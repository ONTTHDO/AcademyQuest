Rails.application.routes.draw do
  resources :quests
  get "up" => "rails/health#show", as: :rails_health_check

  root "posts#index"
  get "brags/index"
end
