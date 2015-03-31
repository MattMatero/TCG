Rails.application.routes.draw do

  resources :cards

  devise_for :users

  root 'home#index'

  get 'home/contact'

  get 'home/about'
 
end