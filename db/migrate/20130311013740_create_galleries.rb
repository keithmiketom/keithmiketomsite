class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :image_url
      t.string :caption
      t.text :description
      t.date :date_added.strftime('%d/%m/%Y')

      t.timestamps
    end
  end
end
