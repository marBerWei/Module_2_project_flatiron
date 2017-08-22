Rails.application.routes.draw do
  resources :cohort_instructors
  resources :instructors
  resources :students
  resources :tests
  resources :cohorts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
