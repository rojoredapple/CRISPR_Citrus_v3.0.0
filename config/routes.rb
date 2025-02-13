Rails.application.routes.draw do
  resources :u6_tables
  resources :sgrna_targets
  resources :array_tables
  resources :array_positions
  resources :vector_tables
  resources :plant_notes
  resources :gp_notes
  resources :gene_csins
  resources :gene_athals
  resources :guide_tables
  get 'societal_acceptance/index'
  get 'societal_acceptance/acceptance'
  get 'info/index'
  resources :gene_studies
  resources :plant_tables
  resources :genotyping_tables
  resources :gene_tables
  get 'contact/form'
  get 'guide/guides'
  get 'gene/genes'
  get 'plant/plants'
  resources :posts
  root :to => 'home#index'
  get '/search' => 'home#search', :as => 'search_page'
  
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
