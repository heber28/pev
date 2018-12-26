Rails.application.routes.draw do
  resources :entulhos
  get 'pesquisar_por_cep', to: 'cep#pesquisar_por_cep'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
