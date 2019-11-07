Rails.application.routes.draw do
  get 'cart/add_to_cart'
  get 'cart/view_order'
  get 'cart/checkout'
  devise_for :users
  resources :products
  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'checkout' => 'cart#checkout'

  root 'storefront#all_items'
  
  get 'all' => 'storefront#all_items'
  
  get 'categorical' =>'storefront#items_by_category'
  
  get 'branding' => 'storefront#items_by_brand'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
