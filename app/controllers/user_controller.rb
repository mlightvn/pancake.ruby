class UserController < ApplicationController
  def index
  end
  def post
  	post = Post.new
  	post.title = "Post 1"
  	post.text = "Nguyen Ngoc Nam\nFirst post";
  	post.save()
  	render :text => "Post inserted!"
  end
end
