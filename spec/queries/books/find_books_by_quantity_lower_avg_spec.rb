# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Books::FindBooksByQuantityLowerAvgSpec do
  before do
    #@subscriber = create(:subscriber)
    #create_list(:subscription, 10, subscriber: @subscriber)
    #create_list(:subscriber_with_subscriptions, 10, subscriptions_count: 10)
    create_list(:book, 10)
  end

  context '#call' do
    it do
      expect(described_class.call).eql?(1)
    end
  end
end