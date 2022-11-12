# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_genres_on_name  (name) UNIQUE
#
class Genre < ApplicationRecord
    has_many :books_genres
    has_many :books, through: :books_genres
    validates :name, presence: {message: 'must be abided'}
    validates :name, uniqueness: {message:'must be unique'}
end

