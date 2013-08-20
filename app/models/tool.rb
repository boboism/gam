class Tool < ActiveRecord::Base
  attr_accessible :manufacturer_id, :serial_rule, :specification, :store_location, :supplier_id, :tool_name, :tool_no, :tool_type_id

  belongs_to :tool_type, class_name: "ToolType", foreign_key: "tool_type_id"
  belongs_to :supplier, class_name: "Supplier", foreign_key: "supplier_id"
  belongs_to :manufacturer, class_name: "Manufacturer", foreign_key: "manufacturer_id"

  has_many :items, class_name: "ToolItem", dependent: :destroy

  scope :search, lambda{|params={}|
    params ||= {}
    spareparts = scoped
    if params[:keywords].present?
      eq_keywords   = params[:keywords].split(/\s+/)
      like_keywords = eq_keywords.map{|word| "#{word}%"}
    end

    spareparts
  }

end
