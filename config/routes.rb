Rails.application.routes.draw do
  # resources :admin_post
  # match 'admin/post/:id' => 'admin_post#show', via: [:get, :post]

  get 'admin/post/:id' => 'admin_post#detail'

  get 'admin/post/new' => 'admin_post#new'
  post 'admin/post/create' => 'admin_post#create'

  get 'admin/post' => 'admin_post#index'
  get 'admin/post/index' => 'admin_post#index'

  get 'admin/post/:id/edit' => 'admin_post#edit'
  patch 'admin/post/:id' => 'admin_post#update'
  delete 'admin/post/:id' => 'admin_post#destroy'

  get 'posts/list'
  get 'posts/:id' => 'posts#detail'
end
