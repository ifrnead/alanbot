Rails.application.routes.draw do
  get 'sessoes/new'

  resources :usuarios
    root 'dashboard#index'
    
    resources :respostas
    
    resources :informacoes
    
    resources :alvos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'respostas/callback', to: 'respostas#callback'
end
