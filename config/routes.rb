Rails.application.routes.draw do
  Rails.application.routes.draw do
    mount Hai::Rest::Engine => "/rest"
  end

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  root "hello#index"
end

