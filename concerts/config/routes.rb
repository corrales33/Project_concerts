Rails.application.routes.draw do
  root :to => "concerts#index"
  resources :concerts
end
