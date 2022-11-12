# frozen_string_literal: true

# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_authors_on_name  (name) UNIQUE
#
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
