Keithmiketom3::Application.routes.draw do

  get "contact_form/new"

  get "contact_form/create"

  devise_for :users
    devise_scope :users do
      get "sign_out", :to => "devise/sessions#destroy"
    end
 
  resources :contact_forms
  #mount Mercury::Engine => '/'

  resources :illustrations

  resources :welcomes

  resources :galleries

  resources :blogs 
  


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action
    match 'about' => 'welcomes#about'
  
    match 'contact' => 'contact_forms#index'
    match 'contactme' => 'contact_forms#new'
    match 'blog' => 'blogs#index'
    match 'art' => 'galleries#index'

    


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


  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'parallax#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
