Rails.application.routes.draw do

  devise_for :users, path: 'accounts'

  resources :users do
    resources :items
  end

  authenticated :user do
    root to: 'users#show', as: :authenticated_root
  end

  unauthenticated :user do
    root 'welcome#index', as: :unauthenticated_root
  end

  get 'about' => 'welcome#about'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
