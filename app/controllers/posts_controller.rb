class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        @post = Post.create(content: params[:content])

        render json: { post: @post }
    end

    def index
        @posts = Post.all
        render 'index'
    end

end