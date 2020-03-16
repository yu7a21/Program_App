class PostController < ApplicationController

  def create
    @post = Post.new
  end

  def new
    @post = Post.new(content: params[:content],
                      difficult: params[:difficult],
                      hint: params[:hint],
                      answer: params[:answer],
                      answer_la: params[:answer],
                      title: params[:title])
    @post.save
    redirect_to("/")
  end
end
