Adam::Application.routes.draw do
  resources :requests

  # The priority is based upon order of creation:
  # first created -> highest priority.
  root :to => 'welcome#index'
  
  # Beautiful promo pages
  match '/:id' => 'pages#show'
end
