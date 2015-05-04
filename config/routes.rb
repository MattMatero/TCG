Rails.application.routes.draw do

  resources :cards

  devise_for :users, :controllers => {registrations: 'registrations'}

  root 'home#index'

  get 'home/contact'

  get 'home/about'

  get 'home/profile'

  get 'cards/office'

  get 'home/photopicker'

  post 'home/photopicker'

  get 'home/profile/:name', to: 'home#profile'
 
end