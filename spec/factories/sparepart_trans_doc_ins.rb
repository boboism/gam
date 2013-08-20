# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sparepart_trans_doc_in do
    doc_no "MyString"
    type ""
    stock_type "MyString"
    user_department_id 1
    remark "MyString"
  end
end
