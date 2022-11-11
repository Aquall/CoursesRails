# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Books::FindAverageOfAllSubBooks do
  before do
    @subscriber = create(:subscriber)
    create_list(:subscription, 10, subscriber: @subscriber)
    create_list(:subscriber_with_subscriptions, 10, subscriptions_count: 5)
    create_list(:subscription, 10, :in_active)
  end

  context '#call' do
    it do
      expect(described_class.call).to be_within(0.5).of(5.45)
    end
  end
end
