# frozen_string_literal: true

module Books
  class FindAverageQuantityBooks
    def self.call
      Book.average(:quantity).to_i
    end
  end
end
