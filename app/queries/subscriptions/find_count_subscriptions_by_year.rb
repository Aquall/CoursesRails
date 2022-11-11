module Subscriptions
    class FindCountSubscriptionsByYear
        def self.call
            Subscription.group("strftime('%Y', start)").count   
        end
    end
end