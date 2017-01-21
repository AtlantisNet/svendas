Rails.application.routes.draw do
  resources :acessos
  root 'application#hello'
end
