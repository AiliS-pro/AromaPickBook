Rails.application.routes.draw do
  root "aromas#index"
  resources :aromas
end
