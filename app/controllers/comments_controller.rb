class CommentsController < ApplicationController
  def index
    @comments = Comment.where(:post_id => params[:post_id])
  end

  def new
  end

  def create
    post = Post.find(params[:post_id])
    @comment = Comment.new(permitted_params.comment)
    @comment.post = post

    if @comment.save
      redirect_to post_path(post)
    end
  end
end
