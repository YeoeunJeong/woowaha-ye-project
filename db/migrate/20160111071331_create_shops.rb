class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :brand_id
      t.integer :region_id
      t.string :addr
      t.float :lng
      t.float :lat

      t.timestamps
    end
  end
end
