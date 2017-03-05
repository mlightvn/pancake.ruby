class PostsController < ApplicationController
	def detail
		@post = Post.find(params[:id])
	end

	def list
		@posts = Post.all
		if params[:post]
			@posts = Post.search(params[:post]).order("created_at DESC")
		else
			@posts = Post.all.order("created_at DESC")
		end
	end
end
