class WelcomesController < InheritedResources::Base
  
  layout "home"
  def index
    @title = "keithmiketom.com"
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
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
  end
  
  
end
