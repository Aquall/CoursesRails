# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Subscriptions::FindCountStatusOfSubscriptions do
  let!(:subscription) { create(:subscription, start: DateTime.new(2019, 1, 1, 0, 0, 0)) }

  describe '#call' do
    it do
      expect(described_class.call).to eq(1)
    end
  end
end