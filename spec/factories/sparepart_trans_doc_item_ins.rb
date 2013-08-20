# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sparepart_trans_doc_item_in do
    sparepart_id 1
    part_no "MyString"
    part_name "MyString"
    specification "MyString"
    quantity 1
    begin_period_quantity 1
    end_period_quantity 1
  end
end
