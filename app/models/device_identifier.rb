class DeviceIdentifier < ActiveRecord::Base
  attr_accessible :description, :index, :key, :status, :value
end
