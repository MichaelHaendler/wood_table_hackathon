Rails.application.routes.draw do
  get 'user/index'


  get 'home/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'welcome#index'
  root 'home#index' 

  get '/user/report', to: 'user#report'
  get '/search', to: 'buildings#test'

  post '/test_input_helper', to: 'buildings#test_input_helper', as: 'blahy'

  get 'user/create', to: 'user#create'

  post 'user/create_helper', to: 'user#create_helper'

  post 'user/create_helper', to: 'user#create_helper'

  #get 'user/calendar', to: 'user#calendar'

  post 'user/audit_request', to: 'user#audit_request'

  post 'user/calendar', to: 'user#calendar', as: 'calendar' #probably calendar_path




  #get 'user/create', to: 'user#index'

  #get 'sub_keddits/:id1/forums', to: 'forums#list_of_forums'



  #post '/official_creation_of_sub_keddit', to: 'sub_keddits#create', as: 'create_sub_keddit'

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
