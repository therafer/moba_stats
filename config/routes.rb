MobaStats::Application.routes.draw do
  root 'pages#home'

  resources :users

  resources :games do
    resources :heros
    resources :items
  end

  resources :heros
end
