class PostsController < ApplicationController
    
    def index
        @post = Post.all
    end

    def show
        load_post
    end
#
#    def edit
#        load_user
#        load_post
#    end
#
##    def update
##        load_user
##        load_post
##        if @user.update_attributes(user_params)
##          redirect_to[':show']
##        else
##          redirect_to[':edit']
##        end
##    end
#
#    def new
#        load_user
#        @post = Post.new
#    end
#    
    protected
#    def load_user
#        @user = User.find params[:user_id]
#    end
    def load_post
        @post = Post.find params[:id]
    end
    
end
