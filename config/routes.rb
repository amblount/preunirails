Rails.application.routes.draw do
  devise_for :gaurdians
  get 'form_fields/show'

  get 'form_fields/new'

  get 'form_fields/edit'

  get 'form_fields/index'

  get 'form_instances/show'

  get 'form_instances/new'

  get 'form_instances/edit'

  get 'form_instances/index'

  get 'forms/new'

  get 'forms/edit'

  get 'forms/index'

  resources :forms

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
