# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Books::FindBookWithMaxQuantity do
  before do
    create_list(:book, 2, quantity:3)
    create(:book, quantity: 6)
  end

  context '#call' do
    it do
      expect(described_class.call).to match_array(Book.where(quantity: 6))
    end
  end
end