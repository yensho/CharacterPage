Rails.application.routes.draw do
  resources :character
  root 'character#index'

  get 'character/:id/confirm' => 'character#confirm', as: :confirm_destroy_character
end
