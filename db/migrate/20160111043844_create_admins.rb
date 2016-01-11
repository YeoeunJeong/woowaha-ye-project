class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :id_name
      t.string :password
      t.integer :shop_id

      t.timestamps
    end
  end
end
