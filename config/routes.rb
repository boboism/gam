Gam::Application.routes.draw do
  resources :depreciation_methods


  resources :device_identifiers


  resources :installation_sites


  resources :departments


  resources :suppliers


  resources :manufacturers


  resources :categories


  resources :devices


  authenticated :user do
    root to: 'home#index'
  end
  devise_for :users do
    root to: 'devise/sessions#new'
  end
  resources :users

end
