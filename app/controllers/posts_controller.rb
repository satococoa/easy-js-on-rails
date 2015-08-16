class PostsController < ApplicationController
  def index
    @posts = Post.order('id DESC').all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      render :success, status: :created
    else
      render :error, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
