# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Books::FindAverageQuantityBooks do
  before do
    create_list(:book, 10, quantity: 100)
    create_list(:book, 10, quantity: 200)
  end

  context '#call' do
    it do
      expect(described_class.call).to eq(150)
    end
  end
end