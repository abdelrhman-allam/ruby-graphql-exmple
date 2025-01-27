Rails.application.routes.draw do
  resources :profiles
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
    post "/graphql", to: "graphql#execute"  
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
