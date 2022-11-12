# == Schema Information
#
# Table name: subscribers
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
    factory :subscriber do
        sequence(:name) { |n| "name#{n}" }
        trait :in_valid do
            name {'name1'}
        end
        factory :subscriber_with_subscriptions do
            transient do
                subscriptions_count { 5 }
            end
            after(:create) do |subscriber, evaluator|
                create_list(:subscription, evaluator.subscriptions_count, subscriber: subscriber)
        
                subscriber.reload
            end
        end
    end
  end
  
