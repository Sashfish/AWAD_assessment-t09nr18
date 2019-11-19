class CreateFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :features do |t|
      t.integer :rooms
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :carspaces
      t.integer :landsize
      t.integer :buildingarea
      t.decimal :distance
      t.belongs_to :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
