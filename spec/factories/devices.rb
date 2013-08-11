# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :device do
    device_name "MyString"
    device_no "MyString"
    specification "MyString"
    category_id 1
    manufacturer_id 1
    supplier_id 1
    acquisition_date "2013-08-08"
    original_cost "9.99"
    responsible_by_id 1
    depreciation_method_id 1
    depreciation_rate "9.99"
    depreciation_life 1
    inspection_period 1
    inspection_date_prev "2013-08-08"
    inspection_date_next "2013-08-08"
    service_status 1
    user_department_id 1
    operator_id 1
    installation_site_id 1
  end
end
