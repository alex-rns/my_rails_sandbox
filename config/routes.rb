Rails.application.routes.draw do
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  resources :articles do
    resources :article_comments
  end

  resources :posts do
    resources :comments
  end

end
