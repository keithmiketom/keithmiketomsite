class Blog < ActiveRecord::Base
  attr_accessible :author, :content, :date, :image_url, :title
  has_many :comments, :dependent => :destroy
  
  
end
