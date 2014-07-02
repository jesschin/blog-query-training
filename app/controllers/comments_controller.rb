class CommentsController < ApplicationController
  def index
    @comments = Comment.where(:post_id => params[:post_id])
  end

  def new
    head :created
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(permitted_params.comment)
    @comment.post = @post

    respond_to do |format|
      if @comment.save
        format.js
      end
    end
  end
end
