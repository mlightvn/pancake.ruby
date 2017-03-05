Rails.application.routes.draw do
  get 'admin/post' => 'admin_post#index'
  get 'admin/post/index' => 'admin_post#index'

  get 'admin/post/new'
  post 'admin/post/create'
  get 'admin/post/:id' => 'admin_post#detail'
  get 'admin/post/:id/edit' => 'admin_post#edit'
  patch 'admin/post/:id' => 'admin_post#update'
  delete 'admin/post/:id' => 'admin_post#destroy'

  # get 'posts/detail'

  get 'posts/list'

  get 'user/post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'user/index'
  # get 'user#index'
  get 'user/index'
  # http_method '/' => 'controller#index'
end
