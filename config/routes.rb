Rails.application.routes.draw do

  devise_for :users
  root 'home#index'

  get 'home/search'

  get 'home/contact'

  get 'home/about'
   
end
