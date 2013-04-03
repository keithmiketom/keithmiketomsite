class CreateIllustrations < ActiveRecord::Migration
  def change
    create_table :illustrations do |t|

      t.timestamps
    end
  end
end
