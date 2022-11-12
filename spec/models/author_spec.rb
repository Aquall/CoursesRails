# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Author, type: :model do
  describe 'associations' do
    subject { create(:author) }

    it { is_expected.to have_many(:authors_books) }
    it { is_expected.to have_many(:books).through(:authors_books) }
  end

  describe 'validations' do
    subject { build(:author) }

    it { is_expected.to validate_presence_of(:name).with_message('must be abided') }
  end
end
