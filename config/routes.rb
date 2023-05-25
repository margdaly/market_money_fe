Rails.application.routes.draw do

  resources :markets, only: %i[index show]
  resources :vendors, only: %i[show]
end
