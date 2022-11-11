# frozen_string_literal: true

class AuthorsBook < ApplicationRecord
  belongs_to :book
  belongs_to :author
  validates :book_id, presence: true
  validates :author_id, presence: true
  validates :book_id, uniqueness: { scope: :author_id }
end
