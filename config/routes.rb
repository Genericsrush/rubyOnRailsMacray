# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'welcome#index'
  get 'temperment/index'
  get 'temperament/:id', to: 'temperment#show', id: /\d+/
  get 'country_origin/index'
  get 'country_origin/:id', to: 'country_origin#show'
  get 'cat_breeds', to: 'cat_breed#index'
  get 'cat_breed/:id', to: 'cat_breed#show', as: 'cat_breed'
  get 'welcome/index'
  get 'cats', to: 'cat#index'
  get 'cat/:id', to: 'cat#show', as: 'cat'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
