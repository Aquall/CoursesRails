module Books
    class FindAverageOfAllSubBooks
        def self.call
            Subscription.where(is_active: true).length.to_f / Subscription.group(:subscriber_id).where(is_active: true).length.to_f
        end
    end
end