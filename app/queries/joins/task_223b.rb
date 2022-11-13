# frozen_string_literal: true

module Joins
  class Task223b
    def self.call
        Subscriber.includes(:subscriptions).references(:subscriptions).where('subscribers.id = subscriptions.subscriber_id').find_each do |subscriber|
            puts "#{subscriber&.name} #{subscriber&.subscriptions&.first&.id}"
        end 
    end
  end
end