class WelcomesController < InheritedResources::Base
 layout "application"
 
  def index
    @title = "keithmiketom.com"
    respond_to do |format|
      format.html # index.html.erb
    end
  end

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
  end
  
  
end
