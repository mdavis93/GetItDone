Rails.application.routes.draw do
  get 'users/show'

  devise_for :users, path: 'account'
  resources :users
  root 'welcome#index'
  get 'about' => 'welcome#about'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
