Rails.application.routes.draw do
  get 'user/post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'user/index'
  # get 'user#index'
  get 'user/index'
  # http_method '/' => 'controller#index'
end
