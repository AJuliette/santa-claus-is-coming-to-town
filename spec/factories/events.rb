FactoryBot.define do
  factory :event do
    user { nil }
    title { "MyString" }
    amount { 1.5 }
  end
end
