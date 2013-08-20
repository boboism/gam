class ToolItem < ActiveRecord::Base
  attr_accessible :issue_reason, :issued_at, :remark, :responsible_by_id, :service_status, :tool_id, :tool_no, :user_department_id

  belongs_to :tool,             class_name: "Tool",       foreign_key: "tool_id"
  belongs_to :user_department,  class_name: "Department", foreign_key: "user_department_id"
  belongs_to :responsible_by,   class_name: "User",       foreign_key: "responsible_by_id"

  SERVICE_STATUSES = {
    in_service: {
      weight:         1 << 0,
      description:    I18n.t('activerecord.attributes.device.service_statuses.in_service')
    }
  }
  def service_status_name; Device::SERVICE_STATUSES.map(&:last).first{|status| status[:weight] == service_status}[:description]; end
end
