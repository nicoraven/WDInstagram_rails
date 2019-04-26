class PostsController < ApplicationController
  def index
  end

  def new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    # render plain: params[:post]

    @post = Post.new(post_params)

    @post.save
    redirect_to @post
  end

  private
    def post_params
      params.require(:post).permit(:title, :author_name, :photo_url, :caption)
    end
end