Rails.application.routes.draw do

  devise_for :users

  # categories
    get 'hobby/categories', to: 'categories#show', as: :categories_show

  # community/
  namespace :community do
    # comments
    post ':id', to: 'comments#add'
    delete ':id', to: 'comments#delete'
    # questions
    get ':id/question', to: 'questions#index', as: :question_index
    delete ':id/question', to: 'questions#delete'
    get ':id/question/new', to: 'questions#new', as: :question_new
    post ':id/question/new', to: 'questions#add'
    # answers
    post ':id/question/:question_id', to: 'answers#add', as: :question
    delete ':id/question/:question_id', to: 'answers#delete'
    # requests
    #resources :requests, only: [:new, :create]
  end

  # communities
  get 'community/:id', to: 'communities#show', as: :communities_show
  delete 'community/:id', to: 'communities#delete', as: :delete_community
  #resources :communities, only: [:new, :create]
  get 'community/request/new', to: 'communities#new', as: :new_community
  post 'communiy/requests', to: 'communities#create', as: :communities

  # home
  root to: 'home#index'

  # users
  resources :users, only: [:show, :edit, :update]
  get 'users/:id/hobby/:id', to: 'users#hobby_index', as: :users_hobby
  get '/users/cancel/show', to: 'users#cancel_show', as: :users_cancel_show
  patch '/users/cancel/show', to: 'users#cancel_update'

end