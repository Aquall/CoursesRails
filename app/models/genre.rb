class Genre < ApplicationRecord
    has_many :books_genres
    has_many :books, through: :books_genres
    validates :name, presence: {message: 'must be abided'}
    validates :name, uniqueness: {message:'must be unique'}
end

