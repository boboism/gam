class SparepartTransDocItemOut < TransDocItem
  attr_accessible :quantity, :sparepart_id

  alias_attribute :sparepart_name, :trans_target_name
  alias_attribute :sparepart_no,   :trans_target_no
  alias_attribute :sparepart_id,   :trans_target_id

  belongs_to :sparepart, class_name: "Sparepart", foreign_key: "trans_target_id"
  belongs_to :trans_doc, class_name: "SparepartTransDocOut", foreign_key: "trans_doc_id"

  before_save :update_no_and_name
  def update_no_and_name
    temp_sparepart = Sparepart.where(id: sparepart_id).first
    self.sparepart_no, self.sparepart_name = temp_sparepart.try(:part_no), temp_sparepart.try(:part_name)  if temp_sparepart
  end
end
