Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {invitations: "invitations"}, skip: [:registrations]

  resources :users
  root 'application#index'

end
