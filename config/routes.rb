Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  
  post "/graphql", to: "graphql#execute"

  resources :users, only: [:show]
end
