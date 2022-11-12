# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Books::FindCountUniqueTrueBooks do
  before do
    create_list(:subscription, 3)
    create_list(:subscription, 3, :in_active)
  end

  describe '#call' do
    it do
      expect(described_class.call).to eq(3)
    end
  end
end
