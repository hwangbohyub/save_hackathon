Rails.application.routes.draw do
  
  root 'intro#splash'
  
  #test
  post 'home/test' 
  get 'home/test'
  post 'home/test_ok' =>'home#test_ok'
  
  # Session
  get 'session/new' =>'session#new'
  post 'session/create' =>'session#create'
  delete 'session/destroy' =>'session#destroy'
  
  # Intro
  get 'intro/splash' => 'intro#splash'
  get 'intro/explain' => 'intro#explain'

  # Home
  get 'home/score' => 'home#score'
  get 'home/fail' => 'home#fail'
  get 'home/result' => 'home#result'
  
  get 'home/scenario0' => 'home#scenario0'
  get 'home/scenario1' => 'home#scenario1'
  get 'home/scenario2' => 'home#scenario2'
  get 'home/scenario3' => 'home#scenario3'
  get 'home/scenario4' => 'home#scenario4'
  get 'home/scenario5' => 'home#scenario5'
  
  get 'home/question1'
  get 'home/question2' => 'home#question2'
  get 'home/question3' => 'home#question3'
  get 'home/question5' => 'home#question5'
  
  get 'home/answer1'
  post 'home/answer1' => 'home#answer1'
  post 'home/answer2' => 'home#answer2'
  post 'home/answer3' => 'home#answer3'
  post 'home/answer5' => 'home#answer5'
  
  
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
