class AddCommentsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :comments_id, :integer
  end
end
