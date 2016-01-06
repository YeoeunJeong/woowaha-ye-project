class CreateCosms < ActiveRecord::Migration[5.0]
  def change
    create_table :cosms do |t|
      t.string :name
      t.integer :price
      t.integer :brand_id
      t.integer :use_id
      t.integer :gender_id

      t.timestamps
    end
  end
end
