# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sparepart do
    part_name "MyString"
    part_no "MyString"
    specification "MyString"
    part_type "MyString"
    stock_max 1
    stock_min 1
    stock_current 1
    unit_price "9.99"
    uom "MyString"
    store_location "MyString"
    manufacturer_id 1
    supplier_id 1
  end
end
