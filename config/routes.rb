Rails.application.routes.draw do
  devise_for :users

  resources :users do
    resources :images
  end

  get 'sign_out', to: "sessions#destroy"
  root :to => "home#index"
end
