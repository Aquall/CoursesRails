# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Subscriptions::Find do
   context 'count status subscription is true' do
    it{expect(Subscriptions::Find.new.count_status_subscription) == (5)}
   end
   context 'count status of true and false subscribers' do
    it{expect(Subscriptions::Find.new.active_and_not_active_subscriptions) == ([5,3])}
   end
   context 'count subscribers add subscription by year' do
    it{expect(Subscriptions::Find.new.all_time_subscribers_add_subscription) == ({"2019"=>4, "2020"=>4})}
   end
   context 'AVG of all subscriptions dates' do
    it{expect(Subscriptions::Find.new.sub_days_from_start_to_finish) == (1135.3297916664742)}
   end

end
