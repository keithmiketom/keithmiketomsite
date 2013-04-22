class ParallaxController < ApplicationController
  
  layout "home"
 def home
    @title = "Welcome to the site"
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
