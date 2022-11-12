# frozen_string_literal: true

class Subscription < ApplicationRecord
  belongs_to :subscriber
  belongs_to :book

  validates :start, presence: { message: 'must be abided' }
  validates :finish, presence: { message: 'must be abided' }
end
