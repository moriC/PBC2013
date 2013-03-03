# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :orientation_day do
    meeting_date "2013-03-03"
    meeting_time "2013-03-03 18:03:41"
    meeting_place "MyString"
    max_number 1
    state 1
  end
end
