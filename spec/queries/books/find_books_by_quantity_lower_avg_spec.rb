# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Books::FindBooksByQuantityLowerAvg do
  before do
    create_list(:book, 2, quantity: 3)
    create_list(:book, 2, quantity: 2)
    create(:book, quantity: 5)
  end

  describe '#call' do
    it do
      expect(described_class.call).to match_array(Book.where(quantity: 0..3))
    end
  end
end
