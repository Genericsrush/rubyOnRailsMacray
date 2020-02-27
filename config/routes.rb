# frozen_string_literal: true

Rails.application.routes.draw do
  get 'country_origin/index'
  get 'country_origin/show'
  get 'cat_breed/index'
  get 'cat_breed/show'
  get 'welcome/index'
  get 'cat/show'
  get 'cat/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
