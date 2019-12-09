class CreateProblemsMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :problems_materials do |t|
      t.references :problem, null: false, foreign_key: true
      t.references :material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
