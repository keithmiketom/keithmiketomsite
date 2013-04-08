class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :blog
      t.text :content
      t.string :author
      t.date :created_at
      t.timestamps
    end
  end
end
