class Illustrations < ActiveRecord::Base
  attr_accessible :gallery_id, :image, :caption, :illustrations
  belongs_to :gallery
  mount_uploader :image, ImageUploader
end
