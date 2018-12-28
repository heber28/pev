Rails.application.routes.draw do
  get 'page/index'
  resources :descartes
  get 'pesquisar_por_cep', to: 'cep#pesquisar_por_cep'
  root :to => 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
