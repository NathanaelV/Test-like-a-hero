FactoryBot.define do
  factory :weapon do
    name { Faker::Games::Pokemon.name }
    description { Faker::JapaneseMedia::Naruto.village }
    power_base { FFaker::Random.rand(500..5000) }
    power_step { FFaker::Random.rand(10..200) }
    level { FFaker::Random.rand(1..100) }
  end
end
