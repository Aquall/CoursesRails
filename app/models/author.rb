class Author < ApplicationRecord
    has_many :authors_books
    has_many :books, through: :authors_books
    validates :name, presence: {message: 'must be abided'}
    #validates :name, format: {with: /\A[a-zA-Z]+\z/, message: 'consist only letters'}
end
