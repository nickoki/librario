class PostsController < ApplicationController

  # Controller#Action index
  #
  def index
    @posts = Post.all
  end

  # Controller#Action new
  #
  def new
    @post = Post.new
  end

  # Controller#Action create
  #
  def create
    @post = Post.create!(post_params)
    redirect_to post_path(@post)
  end

  # Controller#Action show
  #
  def show
    @post = Post.find(params[:id])
  end

  # Controller#Action edit
  #


  # Controller#Action update
  #

  # Controller#Action delete
  #

  private
  def post_params
    params.require(:post).permit(:title, :link, :description, :link_content_date, :user_id, :created_at, :update_at)
  end
end
