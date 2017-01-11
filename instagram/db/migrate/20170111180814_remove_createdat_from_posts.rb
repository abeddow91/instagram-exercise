class RemoveCreatedatFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :created_at, :datetime
  end
end
