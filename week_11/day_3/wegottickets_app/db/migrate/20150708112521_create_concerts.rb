class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :artist
      t.string :city
      t.string :venue
      t.string :date
      t.string :price

      t.timestamps null: false
    end
  end
end
