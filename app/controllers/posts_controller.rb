class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def show
    # load_user
    load_post
  end

  def edit
    load_post
  end

  #    def update
  #        load_user
  #        load_post
  #        if @user.update_attributes(user_params)
  #          redirect_to[':show']
  #        else
  #          redirect_to[':edit']
  #        end
  #    end

  # def new
  #     load_user
  #     @post = Post.new
  # end
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(user_params)
    if @post.save
      redirect_to[':posts, show']
    else
      redirect_to[':posts, new']
    end
  end

  protected

  # def load_user
  #     @user = User.find params[:user_id]
  # end

  def load_post
    @post = Post.find params[:id]
  end

end
