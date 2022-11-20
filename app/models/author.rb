# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_authors_on_name  (name) UNIQUE
#
class Author < ApplicationRecord
    has_many :authors_books
    has_many :books, through: :authors_books
    # has_many :active_books, -> { where(status: :active) }, through: :authors_books, source: :book
    # has_many :horror_books, -> { includes(:genres).where(genres: {name: "genre1"}) }, through: :authors_books, source: :book
    validates :name, presence: {message: 'must be abided'}
    validates_uniqueness_of(:name) 
    #validates :name, format: {with: /\A[a-zA-Z]+\z/, message: 'consist only letters'}
end
