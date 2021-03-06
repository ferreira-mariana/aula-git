Rails.application.routes.draw do

  get 'products/new', to: "products#new", as: :new_product
  get 'products', to: "products#index", as: :products
  post 'products', to: "products#create"
  delete 'products/:id', to: "products#destroy", as: :destroy_product

  get 'lojas/nova_loja', to: "stores#new", as: :new_store
  get 'lojas', to: "stores#index", as: :stores
  post 'lojas', to: "stores#create"
  delete 'lojas/:id', to: "stores#destroy", as: :destroy_store

  root to: "static_pages#index"

  get 'home', to:"static_pages#index", as: :home
  get 'sobre', to:"static_pages#about", as: :about
  get 'contato', to:"static_pages#contact", as: :contact
  get 'junte-se', to:"static_pages#junte", as: :junte

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
