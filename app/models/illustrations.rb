class Illustrations < ActiveRecord::Base
  attr_accessible :title, :body, :image
  mount_uploader :image, ImageUploader
end
