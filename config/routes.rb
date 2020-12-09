Rails.application.routes.draw do
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  get "/articles", to: "articles#index"

  resources :posts do
    resources :comments
  end

end
