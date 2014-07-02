require 'rails_helper'

RSpec.describe Api::PostsController, :type => :controller do
  render_views

  before(:each) do
    create(:post)
  end

  describe "GET #index" do
    it "responds with a list of posts" do
      get :index, :format => :json
      post = Post.take
      # response.body.should have_node(:posts)
      expected_json = {:posts => [:title => post.title, :body => post.body, :comments => []]}.to_json

      expect(response.body).to eq(expected_json)
      expect(response.body).to have_node(:posts)
      expect(response.body).to have_node(:comments)
      expect(response.body).to have_node(:title)
      expect(response.body).to have_node(:body)
      expect(response.status).to eq(200)
    end
  end

end
