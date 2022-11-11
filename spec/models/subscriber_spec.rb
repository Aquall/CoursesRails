# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Subscriber, type: :model do
  describe 'associations' do
    before do
      create(:subscriber)
    end

    it { is_expected.to have_many(:subscriptions) }
  end

end
