Rails.application.routes.draw do

  get 'home/index'
  root to: 'home#index'
  get 'home' => 'home#index'
  get 'home/search' => 'home/search'
  get 'product/index'
  get 'product/show_an_item' =>  'product#show_an_item'
  get 'product/show_list_item'
  get 'review/index'
  get 'review/show/:id'=> 'review#show'
  get 'review/post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
