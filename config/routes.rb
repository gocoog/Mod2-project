Rails.application.routes.draw do
  resources :reasons
  resources :manager_profiles
  resources :employee_profiles
  resources :requests
  resources :managers
  resources :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
