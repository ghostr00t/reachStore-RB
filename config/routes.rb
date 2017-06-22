Rails.application.routes.draw do
  get 'about' => 'pages#about', as: :about
  get 'contact' => 'pages#contact', as: :contact
  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'


  root to: 'listings#index'
  resources :listings, :messages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
