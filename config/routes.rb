Rails.application.routes.draw do
  root to: "landing#index"
  devise_for :instructors, path: "instructors", controllers: {
                             sessions: "instructors/sessions",
                             registrations: "instructors/registrations",
                           }
  devise_for :users

  resources :courses do
    collection do
      get 'development'
      get 'design'
      get 'photography'
      get 'marketing'
      get 'business'
    end
  end
end
