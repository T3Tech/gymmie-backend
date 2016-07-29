Rails.application.routes.draw do
  resources :user_types
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'welcome#index'
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
