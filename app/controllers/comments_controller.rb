class CommentsController < InheritedResources::Base
  def new
    @comment = Comment.new
    @title = "create new comment"
  end
  
  def create
    @comment = Comment.new(params[:comment])
    if @comment.save
      redirect_to root_path
    else
      render 'new'
    
      
   end 
  end
  
  def update
    @comment = Comment.find(params[:id])
    @blog = @comment.article
    @title = "Update a Comment"
    redirect_to @blog
    
    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to(@blog, :notice => 'Comment was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end
  
  
  def destroy
    @comment = Comment.find(params[:id])
    @blog = Blog.find(params[:blog_id])
    @comment.destroy
    redirect_to @blog

    respond_to do |format|
      format.html { redirect_to(@blog, :notice => 'Comment was successfully deleted.') }
    end
  end
end
