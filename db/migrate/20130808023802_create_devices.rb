class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :device_name
      t.string :device_no
      t.string :specification
      t.integer :category_id#, default: Category.first.try(:id)
      t.integer :manufacturer_id#, default: Manufacturer.first.try(:id)
      t.integer :supplier_id#, default: Supplier.first.try(:id)
      t.date :service_date, default: Date.current
      t.decimal :original_cost, precision: 18, scale: 2, default: 0
      t.integer :responsible_by_id
      t.integer :depreciation_method, default: Device::DEPRECIATION_METHODS[:average_life][:weight]
      t.decimal :salvage_rate, precision: 18, scale: 2, default: 5
      t.integer :depreciation_life, default: 12*10
      t.integer :inspection_period, default: 30
      t.date :inspection_date_prev
      t.date :inspection_date_next
      t.integer :service_status, default: Device::SERVICE_STATUSES[:in_service][:weight]
      t.integer :user_department_id
      t.integer :operator_id
      t.integer :installation_site_id

      t.timestamps
    end
  end
end
