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
require "test_helper"

class AuthorsBookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
