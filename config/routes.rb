Rails.application.routes.draw do

  resources :center_children
  resources :child_family_guardian_providers
  resources :children
  root "centers#index"
  
  devise_for :guardians, controllers: {
    sessions: 'guardians/sessions', registrations: 'guardians/registrations'
  }
  devise_for :providers, controllers: {
    sessions: 'providers/sessions', registrations: 'providers/registrations'
  }

  devise_scope :provider do
    get '/signout', to: 'devise/sessions#destroy', as: :"provider/signout"
  end

  devise_scope :guardian do
    get '/signout', to: 'devise/sessions#destroy', as: :"guardian/signout"
  end
  resources :guardians

  resources :centers

  resources :providers

  resources :form_fields

  resources :forms

  resources :form_instances

end
