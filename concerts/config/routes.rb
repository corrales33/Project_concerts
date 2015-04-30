Rails.application.routes.draw do
  root :to => "concerts#index"
  resources :concerts
  get 'concerts/:id/like', to: 'concerts#like'
end
