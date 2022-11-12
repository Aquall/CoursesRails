# frozen_string_literal: true

# == Schema Information
#
# Table name: authors_books
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer          not null
#  book_id    :integer          not null
#
# Indexes
#
#  index_authors_books_on_author_id              (author_id)
#  index_authors_books_on_author_id_and_book_id  (author_id,book_id) UNIQUE
#  index_authors_books_on_book_id                (book_id)
#
# Foreign Keys
#
#  author_id  (author_id => authors.id)
#  book_id    (book_id => books.id)
#
require 'rails_helper'

RSpec.describe AuthorsBook, type: :model do
  describe 'associations' do

    it { is_expected.to belong_to(:book) }
    it { is_expected.to belong_to(:author) }
  end

  describe 'validations' do
    subject {create(:authors_book)}

    it { is_expected.to validate_presence_of(:book_id) }
    it { is_expected.to validate_presence_of(:author_id) }
    it { is_expected.to validate_uniqueness_of(:book_id).scoped_to(:author_id) }
  end
end
