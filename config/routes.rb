Rails.application.routes.draw do
  resources :mensagens
  resources :polos
  resources :usuarios
  resources :respostas
  resources :informacoes
  resources :alvos

  root 'dashboard#index'

  get 'sessoes/new', as: :login
  post 'sessoes/logar'
  get 'sessoes/deslogar', as: :deslogar
  get 'dashboard/index', as: :dashboard
  post 'mensagens/callback', to: 'mensagens#callback'
end
