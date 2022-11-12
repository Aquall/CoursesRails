# frozen_string_literal: true

module Books
  class FindAverageOfUniqueBooksAtSubs
    def self.call
      Subscription.where(is_active: true).uniq.length.to_f /
        Subscription.group(:subscriber_id).where(is_active: true).length
    end
  end
end
