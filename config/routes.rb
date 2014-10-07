Rails.application.routes.draw do
  resources :blogs

   root 'home#index'

end
