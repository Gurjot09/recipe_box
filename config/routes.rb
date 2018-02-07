Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  match '/admin/recipes' => 'recipes#create', via: :post
  match '/admin/recipes/_form' => 'recipes#new', via: :post
  match '/admin/recipes/_ingredient_fields' => 'recipes#new', via: :post
  match '/admin/recipes/_direction_fields' => 'recipes#new', via: :post

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :recipes
  root 'recipes#index'

end
