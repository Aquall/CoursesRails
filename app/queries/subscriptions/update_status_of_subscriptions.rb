module Subscriptions
    class UpdateStatusOfSubscriptions
        def self.call(params)
            Subscription.find_each(batch_size: 10){|book| book.update(is_active: params)}
        end
    end
end