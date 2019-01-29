Rails.application.routes.draw do
  root to: 'payments#index'
  devise_for :users
  resources :payments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
