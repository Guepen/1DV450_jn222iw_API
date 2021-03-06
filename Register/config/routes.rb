Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root  :to => redirect('/login')
  get   '/login' => 'sessions#new'
  post  '/login' => 'sessions#create'

  get   'admin_login' => 'sessions#new_admin', as: :login_admin
  post  'admin_login' => 'sessions#create_admin', as: :do_login_admin

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  get   'apikeys' => 'apikeys#show', as: :apikey
  get   '/logout'  => 'sessions#destroy', as: :logout
  get   '/adminlogout' => 'sessions#destroy_admin', as: :logout_admin
  get   'admin' => 'admins#show', as: :admin

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  resources :users, only: [:create, :destroy, :new]

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

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
