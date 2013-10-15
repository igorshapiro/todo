# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :todo_item do
    user nil
    title "MyString"
    description "MyString"
    due_at "2013-10-15 17:54:23"
  end
end
