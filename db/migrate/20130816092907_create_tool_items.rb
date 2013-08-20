class CreateToolItems < ActiveRecord::Migration
  def change
    create_table :tool_items do |t|
      t.integer :tool_id
      t.string :tool_no
      t.integer :service_status
      t.integer :user_department_id
      t.datetime :issued_at
      t.integer :responsible_by_id
      t.integer :issue_reason
      t.text :remark

      t.timestamps
    end
  end
end
