class Welcome < ActiveRecord::Base
  attr_accessible :email, :subject, :name, :message
  # attr_accessible :title, :body
end
