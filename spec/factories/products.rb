FactoryBot.define do
  factory :product do
    name { Faker::Name.unique.name }
    price { Faker::Commerce.price(5..1000.0, false) }
    discount { Faker::Commerce.price(5..20.0, false) }
    quantity { Faker::Number.between(1, 100) }
    category
    favourite { true }
  end
end
