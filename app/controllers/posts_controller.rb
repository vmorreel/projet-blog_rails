class PostsController < ApplicationController
  before_action :authenticate_user!, :except=>[:index,:show]
  def index
#    @user1 = User.find(1)
    @post = Post.all
  end

  def show
    load_user
    load_post
  end

  def edit
    load_user
    load_post
    
  end

  def update
    load_post
    load_user
    if @post.update_attributes(post_params)
      render 'show'
    else
      render 'show'
    end
  end

  def new
    load_user
    @post = Post.new
  end

  def create
    load_user
    @post = Post.new(post_params)
    if @post.save
      redirect_to['@user,:posts,index']
    else
      render 'new'
    end
  end

  def destroy
    load_post
    load_user
    @post.destroy
    render 'index'
  end

  protected
  def load_user
    @user = User.find(params[:user_id])
  end

  def load_post
    @post = Post.find params[:id]
  end

  def post_params
    params[:post].permit(:title, :content, :lead_paragraph, :user_id, :thumbnail)
  end

end
