class AdminPostController < ApplicationController
	def index
		@posts = Post.all
		if params[:post]
			@posts = Post.search(params[:post]).order("created_at DESC")
		else
			@posts = Post.all.order("created_at DESC")
		end
	end
end
