Rails.application.routes.draw do

  root "posts#index", as: "home"

  get "about" => "pages#about", :as => "about"
  
  get "registration" => "users#new", as: "registration"
  post "users" => "users#create"

  resources :articles do
    resources :article_comments
  end

  resources :posts do
    resources :comments
  end
end
