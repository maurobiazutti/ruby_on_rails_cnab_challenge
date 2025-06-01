Rails.application.routes.draw do
  # Rotas de Upload de Arquivos
  resources :uploads, only: [ :new, :create ]

  # Rotas WEB - Devise padrão
  devise_for :users

  # Namespace separado para API
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for "User", at: "auth"
    end
  end
  root "home#index"
end
