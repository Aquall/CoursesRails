class Book < ApplicationRecord
    has_many :books_genres
    has_many :genres, through: :books_genres
    has_many :authors_books
    has_many :authors, through: :authors_books
    validates :name, uniqueness:{scope: :year, message: 'must be unique!'}
end
