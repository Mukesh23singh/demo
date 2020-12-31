# frozen_string_literal: true

Rails.application.routes.draw do
  resources :appointments
  resources :physicians
  resources :patients
  root to: 'appointments#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
