# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AuthorsBook, type: :model do
  
  describe 'associations' do
    subject { build_list(:author_with_books, 1, books_count: 1) }
    it { is_expected.to belong_to(:book) }
    it { is_expected.to belong_to(:genre) }
  end

  describe 'validations' do
    subject { build_list(:author_with_books, 1, books_count: 1) }
    it { is_expected.to validate_presence_of(:book_id) }
    it { is_expected.to validate_presence_of(:genre_id) }
    it { is_expected.to validate_uniqueness_of(:book_id).scoped_to(:genre_id) }
  end
end
