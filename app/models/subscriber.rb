# == Schema Information
#
# Table name: subscribers
#
#  id         :integer          not null, primary key
#  email      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Subscriber < ApplicationRecord
    has_many :subscriptions
    has_many :active_subscriptions,-> {where(is_active: true)}, class_name: "Subscription"
    has_many :documents, class_name: "Subscription"

    validates :name, presence: {message: 'must be abided'}
    validates :email, presence: true, email: true
end
