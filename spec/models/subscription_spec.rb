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
require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe 'associations' do
    subject { create(:subscription) }

    it { is_expected.to belong_to(:subscriber) }
    it { is_expected.to belong_to(:book) }
  end

  describe 'validations' do
    subject { build(:subscription) }

    it { is_expected.to validate_presence_of(:start).with_message('must be abided') }
    it { is_expected.to validate_presence_of(:finish).with_message('must be abided') }
  end
end
