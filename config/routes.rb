Rails.application.routes.draw do
  resources :employee_leaves
  resources :attendances
  devise_for :employees
  resources :holidays
  resources :designations
  resources :companies
  resources :roles
  resources :departments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
