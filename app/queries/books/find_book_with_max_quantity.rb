# frozen_string_literal: true

module Books
  class FindBookWithMaxQuantity
    def self.call
      Book.order(quantity: :desc).limit(1)
    end
  end
end
