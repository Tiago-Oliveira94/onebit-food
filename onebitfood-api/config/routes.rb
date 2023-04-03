# frozen_string_literal: true

Rails.application.routes.draw do
  scope '/api', defaults: { format: :json } do
    resources :categories, only: [:index]
    resources :restaurantes, only: %i[index show]
    resources :orders, only: %i[create show]
    resources :available_cities, only: [:index]
  end
end
