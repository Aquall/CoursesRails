class Subscriber < ApplicationRecord
    has_many :subscriptions
    has_many :active_subscriptions,-> {where(is_active: true)}, class_name: "Subscription"
    has_many :documents, class_name: "Subscription"
end
