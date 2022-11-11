module Subscriptions
    class FindAverageDaysSubscriptionsIsActiveFalse
        def self.call
            Subscription.where(is_active: false)
                        .group("julianday(finish) - julianday(start)")
                        .count.keys.sum.to_i       
        end
    end
end