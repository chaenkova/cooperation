Rails.application.routes.draw do
  root 'scenes#index'

  devise_for :users

  resources :scenes, only: %i[index show create update destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
