class Comment < ActiveRecord::Base
  attr_accessible :author, :blog_id, :content, :email, :subject
  belongs_to :blog 

end
