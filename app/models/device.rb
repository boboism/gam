class Device < ActiveRecord::Base

  DEPRECIATION_METHODS = {
    average_life: {
      weight:          1 << 0,
      description:     I18n.t('activerecord.attributes.device.depreciation_methods.average_life'),
      current_salvage: proc { (DateTime.now.year - service_date.year) * 12 + (DateTime.now.month - service_date.month) }
    }
  }

  SERVICE_STATUSES = {
    in_service: {
      weight:         1 << 0,
      description:    I18n.t('activerecord.attributes.device.service_statuses.in_service')
    }
  }

  attr_accessible :service_date, :category_id, :depreciation_life, :depreciation_method, :salvage_rate, :device_name, :device_no, 
                  :inspection_date_next, :inspection_date_prev, :inspection_period, :installation_site_id, :manufacturer_id, 
                  :operator_id, :original_cost, :responsible_by_id, :service_status, :specification, :supplier_id, :user_department_id

  #validates :depreciation_life, presence: true, numbericality: {greater_than: 0}, if: :depreciation_method_id
  #validates :depreciation_method_id, inclusion: Device::DEPRECIATION_METHODS.collect{|k,v| v[:weight]}

  belongs_to :category,          class_name: "Category",         foreign_key: "category_id"
  belongs_to :installation_site, class_name: "InstallationSite", foreign_key: "installation_site_id"
  belongs_to :manufacturer,      class_name: "Manufacturer",     foreign_key: "manufacturer_id"
  belongs_to :operator,          class_name: "User",             foreign_key: "operator_id"
  belongs_to :responsible_by,    class_name: "User",             foreign_key: "responsible_by_id"
  belongs_to :supplier,          class_name: "Supplier",         foreign_key: "supplier_id"
  belongs_to :user_department,   class_name: "Department",       foreign_key: "user_department_id"

  scope :search, lambda{|params={}|
    params ||= {}
    devices = scoped
    if params[:keywords]
      eq_keywords   = params[:keywords].split(/\s+/)
      like_keywords = eq_keywords.map{|word| "#{word}%"}
      devices       = devices.joins{category}.where{
        (device_no.eq_any eq_keywords) | 
        (device_name.like_any like_keywords) | 
        (category.value.like_any like_keywords)
      }
    end

    devices
  }

  class << self

    def depreciation_method_list
      Device::DEPRECIATION_METHODS.collect{|key, value| [value[:description], value[:weight]] }
    end
  
    def service_status_list
      Device::SERVICE_STATUSES.collect{|key, value| [value[:description], value[:weight]] }
    end

  end
end
