class PostsController < ApplicationController
  load_and_authorize_resource

  def index
  end

  def show
  end

  def new
  end

  def create
    if @post.save
      redirect_to post_path(@post)
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render "new"
    end
  end

  private

  def post_params
    params.require(:post).permit(:category, :title, :body)
  end
end
