# frozen_string_literal: true

# == Schema Information
#
# Table name: subscribers
#
#  id         :integer          not null, primary key
#  email      :string           not null
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Subscriber, type: :model do
  describe 'associations' do
    subject { create(:subscriber) }

    it { is_expected.to have_many(:subscriptions) }
  end

  describe 'validations' do
    subject { build(:subscriber) }

    it { is_expected.to validate_presence_of(:name).with_message('must be abided') }

    it {
      expect do
        described_class.create!(name: 'Alaussus', email: 'evkakii_bobrov')
      end.to raise_error(ActiveRecord::RecordInvalid)
    }
  end
end
