Rails.application.routes.draw do
  devise_for :users
    resources :libraries
    root 'libraries#index'
end
