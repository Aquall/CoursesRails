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
class BooksGenre < ApplicationRecord
  belongs_to :book
  belongs_to :genre
  validates :book_id, presence: true
  validates :genre_id, presence: true
  validates :book_id, uniqueness:{scope: :genre_id}
end
