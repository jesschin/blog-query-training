class Api::PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    begin
      @post = Post.find(params[:id])

      render :json => @post
    rescue
      render 'api/posts/not_found', :status => :not_found
    end
  end
end
