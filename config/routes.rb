Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:create] # no need :new anymore bc its shown in the restaurant show
  end
end
