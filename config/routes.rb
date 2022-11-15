Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "users#index"
  get "/about/user",to: "users#about"
  get "/work/users", to: "users#work"
  get "/contact/users", to: "users#contact_us"
  post "contact_info/users", to: "users#contact_info"
end
