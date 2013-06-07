WS::Application.routes.draw do



  get "password_resets/new"

  resources :users do
    member do
      get :following, :followers

    end
  end


  resources :sessions,   only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]

  resources :relationships, only: [:create, :destroy]

  match '/zarejestruj',  to: 'users#new', via: [:get, :post]
  match '/zaloguj',  to: 'sessions#new', via: [:get, :post]
  match '/wyloguj', to: 'sessions#destroy', via: :delete, via: [:get, :post]


  root to: 'strony_statyczne#home', via: [:get, :post]

  match '/pomoc',    to: 'strony_statyczne#pomoc', via: [:get, :post]
  match '/onas',   to: 'strony_statyczne#onas', via: [:get, :post]
  match '/kontakt', to: 'strony_statyczne#kontakt', via: [:get, :post]

  match 'calculate' => 'strony_statyczne#calculate', via: [:get, :post]


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
