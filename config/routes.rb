Rails.application.routes.draw do
  resources :courses
  #get 'static_pages/welcome'
  root 'static_pages#welcome'
  #get 'articles/:id/latex', to: 'articles#latex', as: "article_latex"
  get 'closed_courses', to: 'courses#closed_courses', as: "closed_courses"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
