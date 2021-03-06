Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
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
   #board_comments
   post 'community/:id/board_comments', to: 'board_comments#add', as: :board_comment_add
   delete 'community/:id/board_comments', to: 'board_comments#delete', as: :board_comment_delete

  #matchings
  get 'matching', to: 'matching#show', as: :matching_show
  get 'matching/result', to: 'matching#result_show', as: :matching_result_show

  #rankings
  get 'rankings', to: 'rankings#index', as: :ranking_index

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
   post 'users/:id/hobby/:hobby_id/record', to: 'users#record_create', as: :users_record
   delete 'users/:id/hobby/:hobby_id/record', to: 'users#record_delete', as: :users_record_delete
   #cancel
   get '/users/cancel/show', to: 'users#cancel_show', as: :users_cancel_show
   delete '/users/cancel/show', to: 'users#cancel_delete', as: :users_cancel_delete

end