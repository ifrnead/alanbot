Rails.application.routes.draw do
  resources :mensagens
  resources :polos
  root 'dashboard#index'
  get 'sessoes/new', as: :login
  post 'sessoes/logar'
  get 'sessoes/deslogar', as: :deslogar
  resources :usuarios
   get 'dashboard/index', as: :dashboard
    
    resources :respostas
    
    resources :informacoes
    
    resources :alvos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'respostas/callback', to: 'respostas#callback'
end
