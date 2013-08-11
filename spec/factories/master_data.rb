# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :master_datum, :class => 'MasterData' do
    type ""
    key "MyString"
    value "MyString"
    description "MyText"
    status 1
    index "MyString"
  end
end
