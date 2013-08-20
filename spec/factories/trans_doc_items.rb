# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trans_doc_item do
    type ""
    trans_target_id 1
    tarns_target_no "MyString"
    trans_target_name "MyString"
    quantity 1
    begin_period_quantity 1
    end_period_quantity 1
  end
end
