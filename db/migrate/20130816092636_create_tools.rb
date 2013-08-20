class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.integer :tool_type_id
      t.string :tool_no
      t.string :tool_name
      t.string :specification
      t.integer :manufacturer_id
      t.integer :supplier_id
      t.string :store_location
      t.string :serial_rule

      t.timestamps
    end
  end
end
