class AuthorsBook < ApplicationRecord
  belongs_to :book
  belongs_to :author
  validates :book, presence: true
  validates :genre,presence: true
  validates :book, uniqueness: {scope: :author}
end
