class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string  :caption
      t.date    :date_added
      t.string  :image_url
      t.text    :description
      t.string  :image
      t.string  :gallery

      t.timestamps
    end
  end
end
