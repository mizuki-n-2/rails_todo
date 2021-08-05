Rails.application.routes.draw do
  root "tasks#index"

  get "/tasks", to: "tasks#index"
  post "/tasks", to: "tasks#create"
  delete "/tasks/:id", to: "tasks#destroy"
end
