class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def show
    load_post
  end

  def edit
    load_post
  end

  def update
    load_post
    render @post
    if @post.update_attributes(parameters)


    else
      render 'edit'

    end
  end

  def new
    @post = Post.new
  end
  def create
    @post = Post.new(parameters)

    if @post.save
      redirect_to[':posts']
    else
      redirect_to[':posts']
    end
  end

  def parameters
    params.require(:post).permit(:title,:content)
  end

  protected
  def load_user
    @user = User.find params[:user_id]
  end
  def load_post
    @post = Post.find params[:id]
  end


end
