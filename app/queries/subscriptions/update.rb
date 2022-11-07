module Subscriptions
    class Update
        def update_to_inactive
            Subscription.all.each{|book| book.update(is_active: false)}
        end

        def normal_update_to_inactive
            Subscription.find_each(batch_size: 3){|book| book.update(is_active: false)}
        end

        def without_validation_update_to_inactive
            Subscription.update_all(is_active: false)
        end
    end
end