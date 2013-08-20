class CreateRepairRecords < ActiveRecord::Migration
  def change
    create_table :repair_records do |t|
      t.string :doc_no
      t.integer :apply_user_id
      t.date :apply_date, default: Date.current
      t.text :apply_description
      t.integer :repair_level
      t.integer :repairman_id
      t.integer :fault_category_id
      t.integer :status
      t.date :completed_at
      t.integer :time_span
      t.decimal :cost_span
      t.text :analysis
      t.integer :feedback_score
      t.string :feedback

      t.timestamps
    end
  end
end
