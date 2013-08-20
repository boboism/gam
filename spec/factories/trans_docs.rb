# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trans_doc do
    doc_no "MyString"
    type ""
    trans_type "MyString"
    user_department_id 1
    remark "MyString"
  end
end
