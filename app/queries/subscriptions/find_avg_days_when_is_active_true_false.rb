def Subscriptions
    class FindAverageDaysSubscriptionsIsActiveFalse
        def self.call
            days_is_active_false = Subscription.where(is_active: false).group("julianday(finish) - julianday(start)").count.keys.sum
            days_is_active_true = Subscription.where(is_active: true).group("julianday(Date('now')) - julianday(start)").count.keys.sum
            (days_is_active_true + days_is_active_false) / Subscription.count      
        end
    end
end
