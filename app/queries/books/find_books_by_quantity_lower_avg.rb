# frozen_string_literal: true

module Books
  class FindBooksByQuantityLowerAvg
    def self.call
      Book.where(quantity: 0..Book.average(:quantity))
    end
  end
end
