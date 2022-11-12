# frozen_string_literal: true

# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_genres_on_name  (name) UNIQUE
#
require 'rails_helper'

RSpec.describe Genre, type: :model do
  describe 'associations' do
    subject { create(:genre) }

    it { is_expected.to have_many(:books_genres) }
    it { is_expected.to have_many(:books).through(:books_genres) }
  end

  describe 'validations' do
    subject { build(:genre) }

    it { is_expected.to validate_presence_of(:name).with_message('must be abided') }
    it { is_expected.to validate_uniqueness_of(:name).with_message('must be unique') }
  end
end
