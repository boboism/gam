class SparepartTransDocIn < TransDoc

  attr_accessible :doc_no, :remark, :trans_type_id, :user_department_id, :trans_date, :items_attributes

  belongs_to :user_department, class_name: "Department",     foreign_key: "user_department_id"
  belongs_to :trans_type,      class_name: "TransDocInType", foreign_key: "trans_type_id"

  [:user_department, :trans_type].each do |delegate_object|
    delegate :name, to: delegate_object, prefix: true, allow_nil: true
  end

  has_many :items, class_name: "SparepartTransDocItemIn", foreign_key: "trans_doc_id"
  accepts_nested_attributes_for :items , :reject_if => lambda{|attrs| [:sparepart_id, :quantity].any?{|name| attrs[name].blank? } }

  scope :search, lambda{|params={}|
    params ||= {}
    trans_docs = scoped
    if params[:keywords].present?
      eq_keywords   = params[:keywords].split(/\s+/)
      like_keywords = eq_keywords.map{|word| "#{word}%"}
    end

    trans_docs
  }

  after_create :update_sparepart_current_quantity
  def update_sparepart_current_quantity
    items.inject(Hash.new(0)) do |acc, item|
      acc[item.sparepart_id] += item.quantity
      acc
    end.each_pair do |sparepart_id, quantity|
      if sparepart = Sparepart.where(id: sparepart_id).first
        sparepart.update_attribute(quantity: quantity)
      end
    end
  end
end
