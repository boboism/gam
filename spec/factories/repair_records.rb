# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :repair_record do
    doc_no "MyString"
    apply_user_id 1
    apply_date "2013-08-17"
    apply_description "MyText"
    repair_level 1
    repairman_id 1
    fault_category_id 1
    status 1
    completed_at "2013-08-17"
    time_span 1
    cost_span "9.99"
    analysis "MyText"
    feedback_score 1
    feedback "MyString"
  end
end
