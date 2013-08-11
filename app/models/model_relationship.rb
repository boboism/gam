class ModelRelationship < ActiveRecord::Base
  attr_accessible :refer_from_id, :refer_from_type, :refer_to_id, :refer_to_type, :status, :type
end
