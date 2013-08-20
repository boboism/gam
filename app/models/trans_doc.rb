class TransDoc < ActiveRecord::Base
  attr_accessible :doc_no, :remark, :trans_type, :type, :user_department_id
end
