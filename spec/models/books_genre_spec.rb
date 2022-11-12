# frozen_string_literal: true

# == Schema Information
#
# Table name: books_genres
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  book_id    :integer          not null
#  genre_id   :integer          not null
#
# Indexes
#
#  index_books_genres_on_book_id   (book_id)
#  index_books_genres_on_genre_id  (genre_id)
#
# Foreign Keys
#
#  book_id   (book_id => books.id)
#  genre_id  (genre_id => genres.id)
#
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
