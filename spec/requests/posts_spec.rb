require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "POST /posts" do
    it 'create a new post object' do
      post :create, params: { content: 'scvsdvsdfv' }
      expect(Post.count).to eq(1)
    end
  end
end

