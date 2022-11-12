# frozen_string_literal: true

# == Schema Information
#
# Table name: subscriptions
#
#  id            :integer          not null, primary key
#  finish        :datetime
#  is_active     :boolean
#  start         :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  book_id       :integer          not null
#  subscriber_id :integer          not null
#
# Indexes
#
#  index_subscriptions_on_book_id        (book_id)
#  index_subscriptions_on_subscriber_id  (subscriber_id)
#
# Foreign Keys
#
#  book_id        (book_id => books.id)
#  subscriber_id  (subscriber_id => subscribers.id)
#
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
