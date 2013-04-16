class Illustration < ActiveRecord::Base
  attr_accessible :gallery_id, :image, :caption
  belongs_to :gallery
  mount_uploader :image, ImageUploader
  
  validates :gallery_id, :image, :caption, :presence => true
end
