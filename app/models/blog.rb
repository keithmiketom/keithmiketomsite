class Blog < ActiveRecord::Base
  attr_accessible :author, :content, :date, :image_url, :title
  has_many :comments, :dependent => :destroy
  has_and_belongs_to_many :authors
  
  
end
