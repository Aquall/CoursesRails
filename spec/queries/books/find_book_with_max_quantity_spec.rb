# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Books::FindBookWithMaxQuantity do
  let(:book) {create(:book, quantity: 6)}
  let!(:books) {create_list(:book, 2, quantity:3)}


  context '#call' do
    it do
      expect(described_class.call).to match_array([book])
    end
    # it do
    #   book
    #   expect(Book.count).to eql(3)
    # end
  end
end