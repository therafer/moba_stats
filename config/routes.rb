MobaStats::Application.routes.draw do
  root 'pages#home'

  resources :users
  resources :games

end
