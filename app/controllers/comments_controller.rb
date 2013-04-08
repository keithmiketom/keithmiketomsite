class CommentsController < ApplicationController

  def create
    @blog = Blog.find(params[:blog_id])
    @blog.comments.build(params[:comment])
    redirect_to @blog
  end
  
   def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

end
