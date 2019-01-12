Rails.application.routes.draw do
  resources :character
  root 'character#index'
end
