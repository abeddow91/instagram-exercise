class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.string :image
      t.string :location
      t.datetime :created_at

      t.timestamps
    end
  end
end