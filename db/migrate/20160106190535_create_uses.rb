class CreateUses < ActiveRecord::Migration[5.0]
  drop_table :uses

  def change
    create_table :uses do |t|
      t.string :cate

      t.timestamps
    end
  end
end
