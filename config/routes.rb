# frozen_string_literal: true

Rails.application.routes.draw do
  root 'locations#index'
  resources :locations
end
