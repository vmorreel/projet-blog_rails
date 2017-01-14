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
    redirect_to [@comment.user,@comment.post]
  end

  def destroy
    
    @comment = Comment.find params[:id]
    @post = Post.find(params[:post_id])
    
    @comment.user = current_user
    @comment.post = @post
    @comment.destroy
    redirect_to [@comment.user,@comment.post]
  end

end
