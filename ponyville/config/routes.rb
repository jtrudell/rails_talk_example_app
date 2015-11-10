Rails.application.routes.draw do
  root 'ponies#index'
  resources :ponies
end
