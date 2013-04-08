class IllustraionsController < ApplicationController
 
  def create
    @gallery = Gallery.find(params[:gallery_id])
    @gallery.illustrations.create(params[:illustration])
    redirect_to @gallery
  end
end
