Rails.application.routes.draw do
  devise_for :instructors, path: "instructors", controllers: {
                             sessions: "instructors/sessions",
                             registrations: "instructors/registrations",
                           }
  devise_for :users
  root to: "landing#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
