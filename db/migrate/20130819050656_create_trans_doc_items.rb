class CreateTransDocItems < ActiveRecord::Migration
  def change
    create_table :trans_doc_items do |t|
      t.string :type
      t.integer :trans_doc_id
      t.integer :trans_target_id
      t.string :trans_target_no
      t.string :trans_target_name
      t.integer :quantity
      t.integer :begin_period_quantity
      t.integer :end_period_quantity

      t.timestamps
    end
  end
end
