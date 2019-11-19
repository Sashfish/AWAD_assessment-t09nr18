class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.text :suburb
      t.text :address
      t.text :type
      t.integer :price
      t.integer :yearbuilt
      t.text :councilarea
      t.decimal :lattitude
      t.decimal :longitude
      t.text :regionname

      t.timestamps
    end
  end
end
