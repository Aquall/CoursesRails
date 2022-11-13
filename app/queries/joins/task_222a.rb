# frozen_string_literal: true

module Joins
  class Task222a
    def self.call
        Subscriber.joins(:subscriptions).eager_load(:subscriptions).find_each do |subscriber|
            puts "#{subscriber&.name} #{subscriber&.subscriptions&.first&.id}"
        end 
    end
  end
end