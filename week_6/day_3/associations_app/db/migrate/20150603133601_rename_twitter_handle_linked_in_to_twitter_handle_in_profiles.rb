class RenameTwitterHandleLinkedInToTwitterHandleInProfiles < ActiveRecord::Migration
  def change
    rename_column :profiles, :twitter_handle_linked_in_, :twitter_handle
  end
end
