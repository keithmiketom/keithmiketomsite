class IndexController < ApplicationController
  def index
    @title = "keithmiketom.com"
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def about
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
