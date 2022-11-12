# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'associations' do
    subject { create(:book) }

    it { is_expected.to have_many(:books_genres) }
    it { is_expected.to have_many(:genres).through(:books_genres) }
    it { is_expected.to have_many(:authors_books) }
    it { is_expected.to have_many(:authors).through(:authors_books) }
  end

  describe 'validations' do
    subject { build(:book) }

    it { is_expected.to validate_uniqueness_of(:name).scoped_to(:year).with_message('must be unique!') }
  end
end
