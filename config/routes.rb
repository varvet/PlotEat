# frozen_string_literal: true

Rails.application.routes.draw do
  root controller: :recipes, action: :index
  resources :recipes do
    post "add_ingredient", to: "recipes#add_ingredient", as: "add_ingredient"
  end
  resources :menus, only: %i[show update]
end
