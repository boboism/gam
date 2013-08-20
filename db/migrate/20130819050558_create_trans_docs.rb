class CreateTransDocs < ActiveRecord::Migration
  def change
    create_table :trans_docs do |t|
      t.string :doc_no
      t.string :type
      t.string :trans_type_id
      t.date   :trans_date, default: Date.current
      t.integer :user_department_id
      t.string :remark

      t.timestamps
    end
  end
end
