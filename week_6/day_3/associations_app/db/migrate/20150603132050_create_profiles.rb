class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :twitter_handle_linked_in_
      t.string :image
      t.string :email

      t.timestamps null: false
    end
  end
end
