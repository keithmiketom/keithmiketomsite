class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :author
      t.text :content
      t.datetime :date
      t.string :image_url
      t.string :comment_ID

      t.timestamps
    end
  end
end
