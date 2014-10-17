Toneriver::Application.routes.draw do
  root to: "top#index"

  # TopController
  resources :top,only: [:index,:show]
  get "top/like/:id" => "top#like", :as => :like
  get "top/like_cancel/:id" => "top#like_cancel", :as => :like_cancel
  get "/history" => "top#history", :as => :history

  # CommentsController
  resources :comments
  post "top/:id/comments" => "comments#create", :as => :top_comments
  delete "top/:id/comments/:comment_id" => "comments#destroy", :as => :top_comment
  
  # CartController
  resources :cart,only: [:index,:destroy]
  post "cart/add/:id" => "cart#add", :as => :cart_add
  post "cart/update" => "cart#update", :as => :cart_update
  get "cart/checkout_confirm" => "cart#checkout_confirm", :as => :checkout_confirm
  post "cart/checkout" => "cart#checkout", :as => :checkout

  # LoginController
  get "login" => "login#index", :as => :login
  post "login/auth", :as => :login_auth

  # ItemsController
  resources :items

  # UsersController
  resources :users

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
