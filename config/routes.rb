# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
  end
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
