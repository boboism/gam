Gam::Application.routes.draw do
  resources :trans_doc_in_types


  resources :trans_doc_out_types


  resources :sparepart_trans_doc_ins


  resources :fault_categories


  resources :repair_records


  resources :tools


  resources :part_types


  resources :spareparts


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
