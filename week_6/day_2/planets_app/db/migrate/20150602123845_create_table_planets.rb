class CreateTablePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.string :image
      t.float :mass
      t.integer :moons

      t.timestamps
    end
  end
end
