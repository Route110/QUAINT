Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # admins
  get '/admins', to: 'admins#index', as: :admin_index
  get '/admins/hobbies/new', to: 'admins#hobby_new', as: :hobby_new
  post '/admins/hobbies/create', to: 'admins#hobby_create', as: :hobby_create
  get '/admins/categories/new', to: 'admins#category_new', as: :category_new
  post '/admins/categories/create', to: 'admins#category_create', as: :category_create

  # categories
  get 'categories', to: 'categories#index', as: :category_index
  get 'categories/:id', to: 'categories#show', as: :category_show

  # hobbies
  get 'hobbies/:id', to: 'hobbies#show', as: :hobby_show
  post 'hobbies/:id', to: 'hobbies#add', as: :hobby_add

  #communities
  get 'hobbies/:id/communities', to: 'communities#index', as: :community_index
  get 'hobbies/:id/communities/new', to: 'communities#new', as: :community_new
  post 'hobbies/:id/communities/create', to: 'communities#create', as: :community_create
  delete 'hobbies/:id/communities/delete', to: 'communities#delete', as: :community_delete
  get 'community/:id', to: 'communities#show', as: :community_show
  post 'community/:id', to: 'communities#add', as: :community_add

  #matching
  get 'matching', to: 'matching#show', as: :matching_show
  get 'matching/result', to: 'matching#result_show', as: :matching_result_show

  # home
  root to: 'home#index'

  # users
  resources :users, only: [:show, :edit, :update]
   #hobbies
   get 'users/:id/hobby/:hobby_id', to: 'users#hobby_index', as: :users_hobby
   delete 'users/:id/hobby/:hobby_id', to: 'users#hobby_delete', as: :users_hobby_delete
   #communities
   delete 'users/:id/hobby/:hobby_id/community/:community_id', to: 'users#community_delete', as: :users_community_delete
   #records
   post 'users/:id/hobby/:hobby_id', to: 'users#record_create', as: :users_record
   #cancel
   get '/users/cancel/show', to: 'users#cancel_show', as: :users_cancel_show
   delete '/users/cancel/show', to: 'users#cancel_delete', as: :users_cancel_delete

end