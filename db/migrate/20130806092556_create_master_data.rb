class CreateMasterData < ActiveRecord::Migration
  def change
    create_table :master_data do |t|
      t.string :type
      t.string :key
      t.string :value
      t.text :description
      t.integer :status
      t.string :index

      t.timestamps
    end
    
    add_index :master_data, [:type], name: "master_data_type"
    add_index :master_data, [:type, :key], name: "master_data_type_key"
    add_index :master_data, [:type, :key, :status], name: "master_data_tks"
    add_index :master_data, [:index], name: "master_data_index"
  end
end
