# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tool do
    tool_type_id 1
    tool_no "MyString"
    tool_name "MyString"
    specification "MyString"
    manufacturer_id 1
    supplier_id 1
    store_location "MyString"
    serial_rule "MyString"
  end
end
