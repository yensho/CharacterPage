Rails.application.routes.draw do
  root 'character#index'
  resources :character
end
