# frozen_string_literal: true

FactoryBot.define do
  factory :subscription do
    association :subscriber
    association :book
    start { DateTime.new(rand(2018..2020), rand(1..5), rand(1..28), 10, 5, 6) }
    finish { start + 1.year }
    is_active { true }

    trait :in_active do
      is_active { false }
    end

    trait :with_old_book do
      association :book, factory: %i[book old]
    end
  end
end
