class ChangeCommentstoColumnToCommentInPosts < ActiveRecord::Migration
  def change
    rename_column :posts, :comments_id, :comment_id
  end
end
