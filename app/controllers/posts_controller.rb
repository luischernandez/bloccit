class PostsController < ApplicationController
  def index
      @posts = Post.all
      @posts.each_with_index {|post, index|
          if index % 5 == 0
              post.title = "** THIS IS POST HAS BEEN FLAGGED AS SPAM BY OUR SYSTEM **"
          end
      }
  end

  def show
  end

  def new
  end

  def edit
  end
end