Rails.application.routes.draw do
  get 'chat_messages/index'

  resources :communities
  resources :messages
  resources :community_tags
  resources :tags
  resources :event_members
  resources :members
  resources :events
  resources :skills
  resources :users
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
