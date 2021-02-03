Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/tasks",to: "tasks#index"
  # post "/tasks",to: "tasks#create"
  # delete "/tasks/:id",to: "tasks#destroy"
  resources :tasks
end
