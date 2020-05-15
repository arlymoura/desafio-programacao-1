FactoryBot.define do
  factory :item do
    description { Faker::Lorem.sentence }
    price { Faker::Number.decimal(4) }
    merchant { nil }
  end
end
