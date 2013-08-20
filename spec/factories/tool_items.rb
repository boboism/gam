# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tool_item do
    tool_id 1
    tool_no "MyString"
    service_status 1
    user_department_id 1
    issued_at "2013-08-16 17:29:07"
    responsible_by_id 1
    issue_reason 1
    remark "MyText"
  end
end
