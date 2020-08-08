Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/secretroom', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'welcome#index'
end
