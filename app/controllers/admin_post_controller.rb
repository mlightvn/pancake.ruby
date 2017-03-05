class AdminPostController < ApplicationController
	def index
		@posts = Post.all
		if params[:post]
			@posts = Post.search(params[:post]).order("created_at DESC")
		else
			@posts = Post.all.order("created_at DESC")
		end
	end

	def new
	end

	def create
		@post = Post.new(params.require(:post).permit(:title, :content))
		# @post = Post.new(@post = Post.new(params.require(:post).permit(:title, :content)))

		@post.save
		redirect_to action: "index"
	end

	def detail
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		# id = params[:id]
		@post = Post.find(params[:id])

		if @post.update(params.require(:post).permit(:title, :content))
			redirect_to action: "index"
			# redirect_to action: "detail/#{post.id}"
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to action: "index", :notice => "Your post has been deleted."
		# render plain: 'Deleted'
	end
end
