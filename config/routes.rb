Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # devise_for :users, controllers:{
  #   registrations: 'users/registrations',
  #   sessions: 'users/sessions',
  #   omniauth_callback: 'users/omniauth_callback'
  # }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
  get "/about",to: "users#about"
  get "/work", to: "users#work"
  get "/contact", to: "users#contact_us"
  post "contact_info/users", to: "users#contact_info"
  get "/services", to: "users#services"
end
