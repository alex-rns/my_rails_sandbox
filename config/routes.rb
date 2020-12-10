Rails.application.routes.draw do
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  resources :articles

  resources :posts do
    resources :comments
  end

end
