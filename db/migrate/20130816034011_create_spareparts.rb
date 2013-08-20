class CreateSpareparts < ActiveRecord::Migration
  def change
    create_table :spareparts do |t|
      t.string :part_name
      t.string :part_no
      t.string :specification
      t.integer :part_type_id
      t.integer :stock_max, default: 0
      t.integer :stock_min, default: 0
      t.integer :stock_current, default: 0
      t.decimal :unit_price, defaullt: 0
      t.string :uom
      t.string :store_location
      t.integer :manufacturer_id
      t.integer :supplier_id

      t.timestamps
    end
  end
end
