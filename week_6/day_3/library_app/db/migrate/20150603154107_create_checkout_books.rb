class CreateCheckoutBooks < ActiveRecord::Migration
  def change
    create_table :checkout_books do |t|
      t.integer :checkout_id
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
