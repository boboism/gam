# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sparepart_trans_doc_item_out do
    trans_doc_id 1
    quantity 1
    begin_period_quantity 1
    end_period_quantity 1
    sparepart_id 1
    sparepart_no "MyString"
    sparepart_name "MyString"
  end
end
