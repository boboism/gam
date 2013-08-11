class CreateModelRelationships < ActiveRecord::Migration
  def change
    create_table :model_relationships do |t|
      t.string :type
      t.integer :refer_from_id
      t.string :refer_from_type
      t.integer :refer_to_id
      t.string :refer_to_type
      t.integer :status

      t.timestamps
    end
  end
end
