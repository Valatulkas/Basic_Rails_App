class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
        new_post = Post.create(content: params[:content])
        
        render json: params
    end

end