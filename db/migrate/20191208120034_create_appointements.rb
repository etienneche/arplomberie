class CreateAppointements < ActiveRecord::Migration[6.0]
  def change
    create_table :appointements do |t|
      t.text :address
      t.timestamp :date
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.references :problem, null: false, foreign_key: true

      t.timestamps
    end
  end
end
