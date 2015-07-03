class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :checkout_reference
      t.integer :customer_id

      t.timestamps null: false
    end
  end
end
