Rails.application.routes.draw do
  resources :api, via: [:post], only: [:create]

  # Enable GraphQL editor in development mode
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/api"
  end
end
