class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :blog
      t.integer :blog_id
      t.string :author
      t.string :email
      t.string :subject
      t.text :content

      t.timestamps
    end
  end
end
