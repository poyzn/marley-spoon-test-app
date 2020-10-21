# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'
  get 'recipes/:id', to: 'home#index'

  namespace :api, defaults: { format: :json } do
    resources :recipes, only: %i[index show]
  end
end
