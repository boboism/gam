class RepairRecord < ActiveRecord::Base
  attr_accessible :analysis, :apply_date, :apply_description, :apply_user_id, :completed_at, :cost_span, :doc_no, :fault_category_id, :feedback, :feedback_score, :repair_level, :repairman_id, :status, :time_span

  belongs_to :apply_user, class_name: "User", foreign_key: "apply_user_id"
  belongs_to :repairman, class_name: "User", foreign_key: "repairman_id"
  belongs_to :fault_category, class_name: "FaultCategory", foreign_key: "fault_category_id"

end
