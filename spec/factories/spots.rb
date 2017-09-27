FactoryGirl.define do
  factory :spot do
    name "MyString"
    description "MyText"
    address "MyString"
    lat 1.5
    lng 1.5
    required_time 1
    plan_id 1
  end
end
