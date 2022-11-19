# frozen_string_literal: true

class SubscriberBlueprint < Blueprinter::Base
  identifier :id

  fields :name

  association :subscriptions, blueprint: SubscriptionBlueprint
end
