Rails.application.routes.draw do
  root 'welcome#index'
  resources :instructors do 
      resources :cohorts
  end
  resources :students do
    resources :student_tests
  end

  resources :cohorts do 
    resources :students
  end

  #patch 'some route', to: "students#change_students_cohort"

  resources :sessions
  get '/instructor_login', to: "sessions#new_instructor"
  post '/sessions', to: "sessions#create"
  get '/student_login', to: "sessions#new_student"
  get '/logout', to: "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
