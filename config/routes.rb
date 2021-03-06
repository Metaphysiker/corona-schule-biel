Rails.application.routes.draw do
  resources :contents
  devise_for :users
  resources :courses
  #get 'static_pages/welcome'
  root 'static_pages#welcome'
  #get 'articles/:id/latex', to: 'articles#latex', as: "article_latex"
  get 'closed_courses', to: 'courses#closed_courses', as: "closed_courses"
  get 'my_courses', to: 'courses#my_courses', as: "my_courses"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post 'courses/:id/change_status', to: 'courses#change_status', as: "change_status"

end
