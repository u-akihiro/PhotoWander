PhotoWander::Application.routes.draw do
  root 'rallies#index' #トップページ
  
  get  'login/'  => 'login#login_form' #ログインフォーム画面
  post 'login/'  => 'login#login_auth' #ログイン認証
  get  'logout/' => 'login#logout' #ログアウト
  
  #user
  get  'account/entry/'  => 'users#new'
  get  'account/secede/' => 'users#secede_confirm'
  post 'account/secede/' => 'users#secede'
  get  'account/edit/'   => 'users#edit'
  post 'account/save/'   => 'users#create'
  put  'account/save/'   => 'users#update'
  
  #admin
  get  'admin/'        => 'admin#index'
  get  'admin/create/' => 'admin#create'
  
  #api
  get  'api/' => 'api#fetch'
  
  resources :stamps

  resources :checkpoints

  resources :entry_cards

  resources :rallies

  #resources :users

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
