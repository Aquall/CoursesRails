module Subscriptions
    class FindCountStatusOfSubscriptions
        def self.call
            Subscription.distinct.where("is_active = ?", true).count
        end    
    end
end