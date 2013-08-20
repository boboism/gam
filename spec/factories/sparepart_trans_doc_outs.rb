# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sparepart_trans_doc_out do
    doc_no "MyString"
    remark "MyString"
    trans_type_id 1
    user_department_id 1
    trans_date "2013-08-20"
  end
end
