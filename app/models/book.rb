# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  name       :string
#  quantity   :integer          default(0)
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_books_on_name_and_year  (name,year) UNIQUE
#
class Book < ApplicationRecord
    has_many :books_genres
    has_many :genres, through: :books_genres
    has_many :authors_books
    has_many :authors, through: :authors_books
    validates :name, uniqueness:{scope: :year, message: 'must be unique!'}
end
