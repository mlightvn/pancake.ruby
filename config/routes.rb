Rails.application.routes.draw do
  # get 'posts/detail'

  get 'posts/list'
  get 'posts/new'
  post 'posts/create'
  get 'posts/:id' => 'posts#detail'
  get 'posts/:id/edit' => 'posts#edit'
  patch 'posts/:id' => 'posts#update'
  delete 'posts/:id' => 'posts#destroy'

  get 'user/post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'user/index'
  # get 'user#index'
  get 'user/index'
  # http_method '/' => 'controller#index'
end
