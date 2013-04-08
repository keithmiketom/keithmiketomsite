class AddCaptionToIllustrations < ActiveRecord::Migration
  def change
    add_column :illustrations, :caption, :string
  end
end
