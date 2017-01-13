class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment].permit!)
    @post = Post.find(params[:post_id])

    @comment.user = current_user
    @comment.post = @post
    @comment.save
    redirect_to user_posts_path
  end

  def destroy
    @comment = Comment.find params[:id]
    @post = @comment.post
    @comment.destroy
    redirect_to user_post_path
  end

end
