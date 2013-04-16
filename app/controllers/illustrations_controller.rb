class IllustrationsController < ApplicationController
  
  def create
    @illustration = Illustration.new(params[:illustration])

    respond_to do |format|
      if @illustration.save
        format.html { redirect_to @illustration.gallery, notice: 'Illustration was successfully created.' }
        format.json { render json: @illustration.gallery, status: :created, location: @gallery }
      else
        format.html { redirect_to @illustration.gallery, notice: 'Illustration was not saved.' }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @illustration = Illustration.find(params[:id])
    @gallery = @illustration.gallery
    @illustration.destroy

    respond_to do |format|
      format.html { redirect_to @gallery }
      format.json { head :no_content }
    end
  end
end
