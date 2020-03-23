class HomeController < ApplicationController
  def top
    @post = Post.all.order(created_at: :desc);
  end
end
