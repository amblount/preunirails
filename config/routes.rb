Rails.application.routes.draw do
  root "centers#index"
  
  devise_for :gaurdians, controllers: {
    sessions: 'gaurdians/sessions', registrations: 'gaurdians/registrations'
  }
  devise_for :providers, controllers: {
    sessions: 'providers/sessions', registrations: 'providers/registrations'
  }

  resources :centers, only: [:index, :show]

  resources :form_fields

  resources :forms

  resources :form_instances

end
