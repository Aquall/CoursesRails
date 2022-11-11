# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Books::FindAverageQuantityBooks do
  before do
    #@subscriber = create(:subscriber)
    #create_list(:subscription, 10, subscriber: @subscriber)
    #create_list(:subscriber_with_subscriptions, 10, subscriptions_count: 10)
    create_list(:book, 10, quantity: 100)
    create_list(:book, 10, quantity: 200)
  end

  context '#call' do
    it do
      expect(described_class.call).to eq(150)
    end
  end
end