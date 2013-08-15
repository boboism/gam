class DeviceIdentifier < MasterData
  attr_accessible :name
  alias_attribute :name, :value

  has_many :device_relationships, class_name: "ModelRelationship", as: :refer_from, dependent: :destroy
  has_many :devices, through: :device_relationships, source: :refer_to, source_type: "Device"
end
