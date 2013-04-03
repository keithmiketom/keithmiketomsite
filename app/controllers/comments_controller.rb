class CommentsController < ApplicationController

  def create
    @blog = Blog.find(params[:blog_id])
    @blog.comments.create(params[:comment])
    redirect_to @blog
  end

end
