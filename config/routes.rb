# frozen_string_literal: true

Rails.application.routes.draw do
  root 'items#index'
  resources :items do
    collection do
      get :active
      get :not_active
      get :borrowed
      get :not_borrowed
    end
  end
end
