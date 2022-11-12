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
require "test_helper"

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
