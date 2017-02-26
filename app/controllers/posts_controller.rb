class PostsController < ApplicationController
  def new
  end
  def create
	@post = Post.new(params.require(:post).permit(:title, :content))
	# @post = Post.new(@post = Post.new(params.require(:post).permit(:title, :content)))

	@post.save
	redirect_to action: "list"
	# return
  end

  def detail
	@post = Post.find(params[:id])
  end

  def edit
	@post = Post.find(params[:id])
  end

  def update
	@post = Post.find(params[:id])

    if @post.update(params.require(:post).permit(:title, :content))
		redirect_to action: "list"
      # render plain: 'success'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

	redirect_to action: "list"
    # render plain: 'Deleted'
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
