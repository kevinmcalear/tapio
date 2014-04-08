Tapio::Application.routes.draw do

  # splash page
  root "welcome#index"

  # basic pages linkable from navbar
  get  "/about", to: "welcome#about" # about page for website
  get "/contact", to: "welcome#contact" # contact page

  # session links
  get  "/login", to: "session#new"           # sign in form
  post "/session", to: "session#create"      # log in
  delete "/session", to: "session#destroy"   # log out
  

  # customer routing
  resources :customers do
    resources :bookings do
      # stripe checkout
      resources :charges
    end
  end

  # vendor routing
  resources :vendors do
    resources :listings, controller: 'vendors/listings' do
      resources :timeslots
    end
  end

  # generic user routing
  resources :users

  # all listings
  resources :listings do
    resources :bookings
  end
end
