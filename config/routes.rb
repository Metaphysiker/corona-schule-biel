Rails.application.routes.draw do
  devise_for :users
  resources :courses
  #get 'static_pages/welcome'
  root 'static_pages#welcome'
  #get 'articles/:id/latex', to: 'articles#latex', as: "article_latex"
  get 'closed_courses', to: 'courses#closed_courses', as: "closed_courses"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post 'courses/:id/change_status', to: 'courses#change_status', as: "change_status"

end
