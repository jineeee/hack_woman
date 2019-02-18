Rails.application.routes.draw do
  resources :majors
  resources :competitions
  resources :licenses
  resources :languages
  resources :dailies
  
  
  post '/:x_id/cmtlan' => 'languages#cmtlan'
  post '/:x_id/cmtcom' => 'competitions#cmtcom'
  post '/:x_id/cmtda' => 'dailies#cmtda'
  post '/:x_id/cmtma' => 'majors#cmtma'
  post '/:x_id/cmtli' => 'licenses#cmtli'
  
  get '/:p_id/cmtlandes/:c_id' => 'languages#cmtdes', as: 'cmtlandes'
  get '/:p_id/cmtcomdes/:c_id' => 'competitions#cmtdes', as: 'cmtcomdes'
  get '/:p_id/cmtdades/:c_id' => 'dailies#cmtdes', as: 'cmtdades'
  get '/:p_id/cmtmades/:c_id' => 'majors#cmtdes', as: 'cmtmades'
  get '/:p_id/cmtlides/:c_id' => 'licenses#cmtdes', as: 'cmtlides'
  
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
