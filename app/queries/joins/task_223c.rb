# frozen_string_literal: true

module Joins
  class Task223c
    def self.call
        Subscriber.includes(:subscriptions).where.not(id: Subscriber.joins(:subscriptions).ids).find_each do |subscriber|
            puts "#{subscriber&.name} #{subscriber&.subscriptions&.first&.id}"
        end 
    end
  end
end