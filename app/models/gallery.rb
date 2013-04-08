class Gallery < ActiveRecord::Base
  attr_accessible :caption, :date_added, :image_url, :description, :image, :illustrations
  has_many :illustrations
end
