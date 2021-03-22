FactoryBot.define do
  factory :weather do
    temp { 1.5 }
    temp_min { 1.5 }
    temp_max { 1.5 }
    description { "MyString" }
  end
end
