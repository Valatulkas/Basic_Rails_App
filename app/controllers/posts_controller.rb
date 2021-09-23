class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        @post = Post.create(content: params[:content])

        render 'posts/create.jbuilder'
    end

    def index
        render json: { post: @post }
    end

end