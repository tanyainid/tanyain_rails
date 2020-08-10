Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  mount RailsAdmin::Engine => '/secretroom', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'welcome#index'
  namespace :api do
    post 'login', to: 'auth#login'
    post 'register', to: 'auth#register'
    get 'user', to: 'auth#user'
  end
end
