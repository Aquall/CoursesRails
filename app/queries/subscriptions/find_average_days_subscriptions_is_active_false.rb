module Subscriptions
    class FindAverageDaysSubscriptionsIsActiveFalse
        def self.call
            Subscription.not_active
                        .group("julianday(finish) - julianday(start)")
                        .count
                        .keys
                        .sum
                        .to_i       
        end
    end
end