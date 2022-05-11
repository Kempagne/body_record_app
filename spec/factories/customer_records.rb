FactoryBot.define do
  factory :customer_record do
    date { "2022-05-11" }
    customer_name { "MyString" }
    staff_name { "MyString" }
    note { "MyText" }
  end
end
