Rails.application.routes.draw do
  root 'welcome#index'
  resources :cohort_instructors
  resources :instructors
  resources :students
  resources :tests
  resources :cohorts
  get '/instructor_login', to: "sessions#new_instructor"
  post '/sessions', to: "sessions#create"
  get '/student_login', to: "sessions#new_student"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
