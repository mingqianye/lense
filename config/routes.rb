Rails.application.routes.draw do
  get 'categories', to: 'categories#index', as: 'categories'
  root to: 'landing#index'
end
