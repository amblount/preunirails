Rails.application.routes.draw do
  get 'providers/show'

  root "centers#index"
  
  devise_for :guardians, controllers: {
    sessions: 'guardians/sessions', registrations: 'guardians/registrations'
  }
  devise_for :providers, controllers: {
    sessions: 'providers/sessions', registrations: 'providers/registrations'
  }

  resources :centers

  resources :providers

  resources :form_fields

  resources :forms

  resources :form_instances

end
