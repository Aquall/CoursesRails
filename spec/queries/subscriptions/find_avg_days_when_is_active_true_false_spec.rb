# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Subscriptions::FindAvgDaysWhenIsActiveTrueFalse do
  let!(:subscription) { create(:subscription, start: DateTime.new(2019, 1, 1, 0, 0, 0)) }
  let!(:subscription) { create(:subscription, :in_active, start: DateTime.new(2019, 1, 1, 0, 0, 0)) }
  let!(:subscription) { create(:subscription, :in_active, start: DateTime.new(2020, 1, 14, 0, 0, 0)) }

  describe '#call' do
    it do
      expect(described_class.call).to be_within(0.5).of(366.0)
    end
  end
end
