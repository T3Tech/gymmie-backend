Rails.application.routes.draw do
  resources :user_types
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'welcome#index'
  get 'welcome/index'

  get '/partners/:partner_id', to: 'users#partner', as: 'partner'
  get 'partners', to: 'users#partners', as: 'partners'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
