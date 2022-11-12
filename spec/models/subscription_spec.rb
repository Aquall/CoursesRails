# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Subscription, type: :model do
  describe 'associations' do
    subject { create(:subscription) }

    it { is_expected.to belong_to(:subscriber) }
    it { is_expected.to belong_to(:book) }
  end

  describe 'validations' do
    subject { build(:subscription) }

    it { is_expected.to validate_presence_of(:start).with_message('must be abided') }
    it { is_expected.to validate_presence_of(:finish).with_message('must be abided') }
  end
end
