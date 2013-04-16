class AddGalleryIdToIllustrations < ActiveRecord::Migration
  def change
    add_column :illustrations, :gallery_id, :integer
  end
end
