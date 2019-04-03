FactoryBot.define do
  sequence(:name) { |n| "#{n}" }

  factory :product do
    name "New Robot"
    description "A vintage tin robot"
    year "1960s"
    price 300.00
  end

end
