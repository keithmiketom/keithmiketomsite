class WelcomesController < ApplicationController
 layout "application"
 

  def about
    @title = "About This Site"
    respond_to do |format|
      format.html # index.html.erb
    end
  end
    
  def contact
    @title = "Contact Keith"
    
    
    respond_to do |format|
      format.html # index.html.erb
    end
  def new
    @message = Message.new
    @contact = Message.new
  end

  def create
    @message = Message.new(params[:message])
    @contact = Message.new(params[:message])
    
    if @contact.valid?
      NotificationsMailer.new_message(@contact).deliver
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end

  end
  
  
end
