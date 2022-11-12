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
require "test_helper"

class SubscriptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
