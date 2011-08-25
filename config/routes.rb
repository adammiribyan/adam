Adam::Application.routes.draw do
  scope '/getsome' do
    match '/' => 'posts#index'
    resources :posts
  end
  
  resources :requests

  # The priority is based upon order of creation:
  # first created -> highest priority.
  match '/:locale' => 'welcome#index', locale: /ru|cz/
  root :to => 'welcome#index'
  
  # Beautiful promo pages
  match '/:id' => 'pages#show'
end

