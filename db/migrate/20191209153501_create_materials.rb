class CreateMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.integer :price
      t.text :description
      t.integer :quantity

      t.timestamps
    end
  end
end
