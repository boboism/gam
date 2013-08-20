class Sparepart < ActiveRecord::Base
  attr_accessible :manufacturer_id, :part_name, :part_no, :part_type_id, :specification, 
                  :stock_current, :stock_max, :stock_min, :store_location, :supplier_id, 
                  :unit_price, :uom

  [:part_type, :manufacturer, :supplier].each do |delegate_object|
    delegate :name, to: delegate_object, prefix: true, allow_nil: true
  end

  belongs_to :part_type, class_name: "PartType", foreign_key: "part_type_id"
  belongs_to :manufacturer, class_name: "Manufacturer", foreign_key: "manufacturer_id"
  belongs_to :supplier, class_name: "Supplier", foreign_key: "supplier_id"

  scope :search, lambda{|params={}|
    params ||= {}
    spareparts = scoped
    if params[:keywords].present?
      eq_keywords   = params[:keywords].split(/\s+/)
      like_keywords = eq_keywords.map{|word| "#{word}%"}
    end

    spareparts
  }

  def self.selectable_list
    unscoped.select{[id, part_no.op("||", part_name).as(name)]}.all
  end


  def as_xls(options = {})
    params = { id: id.to_s}
    [
      [:part_name, part_name], 
      [:part_no, part_no], 
      [:specification, specification], 
      [:part_type_id, part_type_name],
      [:uom, uom], 
      [:unit_price, unit_price], 
      [:manufacturer_id, manufacturer_name], 
      [:supplier_id, supplier_name],
      [:store_location, store_location],
      [:stock_max, stock_max],
      [:stock_min, stock_min],
      [:stock_current, stock_current]
    ].each do |pair|
      params = params.merge(Sparepart.human_attribute_name(pair.first) => pair.last)
    end

    params
  end
end
