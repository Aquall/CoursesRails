# frozen_string_literal: true

module Books
  class FindCountUniqueTrueBooks
    def self.call
      Subscription.where('is_active = ?', true).count('DISTINCT book_id')
    end
  end
end
