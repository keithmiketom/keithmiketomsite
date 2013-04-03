class AddImageToIllustrations < ActiveRecord::Migration
  def change
    add_column :illustrations, :image, :string
  end
end
