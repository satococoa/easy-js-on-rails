class PostsController < ApplicationController
  def index
    @posts = Post.order('id DESC').all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_url
    else
      @posts = Post.order('id DESC').all
      render :index
    end
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
