Rails.application.routes.draw do

  devise_for :users
  root :to => 'listings#index'

  resources :listings do
    resources :photos
  end
end
