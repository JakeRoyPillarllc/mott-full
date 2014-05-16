MottFull::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  resources :contacts

  get '/main_page', to: 'home#main_page', as: 'main_page_home'
  get '/lobby', to: 'home#lobby', as: 'lobby_home'
  get '/rooftop', to: 'home#rooftop', as: 'rooftop_home'
  get '/living_room', to: 'home#living_room', as: 'living_room_home'
  get '/penthouse', to: 'home#penthouse', as: 'penthouse_home'
  get '/fact_sheet', to: 'home#fact_sheet', as: 'fact_sheet_home'
  get '/team', to: 'home#team', as: 'team_home'
  get '/kitchen', to: 'home#kitchen', as: 'kitchen_home'
  get '/bathroom', to: 'home#bathroom', as: 'bathroom_home'
  get '/nolita', to: 'home#nolita', as: 'nolita_home'
  get '/map', to: 'home#map', as: 'map_home'
  get '/availability', to: 'home#availability', as: 'availability_home'
  get '/press', to: 'home#press', as: 'press_home'
  get '/legal', to: 'home#legal', as: 'legal_home'

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
