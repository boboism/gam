class TransDocItem < ActiveRecord::Base
  attr_accessible :begin_period_quantity, :end_period_quantity, :quantity, :tarns_target_no, :trans_target_id, :trans_target_name, :type
end
